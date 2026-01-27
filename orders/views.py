from django.shortcuts import render, redirect, get_object_or_404
from django.contrib.admin.views.decorators import staff_member_required
from django.template.loader import render_to_string
from django.core.mail import EmailMessage
from django.conf import settings
from cart.cart import Cart
from .models import Order, OrderItem
from .forms import OrderCreateForm

def order_create(request):
    cart = Cart(request)
    
    if len(cart) == 0:
        return redirect('cart:cart_detail')
    
    if request.method == 'POST':
        form = OrderCreateForm(request.POST)
        if form.is_valid():
            # Save the order
            order = form.save(commit=False)
            
            # Set user if authenticated
            if request.user.is_authenticated:
                order.user = request.user
            
            order.save()
            
            # Create order items from cart
            for item in cart:
                OrderItem.objects.create(
                    order=order,
                    product=item['product'],
                    price=item['product'].price,
                    quantity=item['quantity']
                )
            
            # Clear the cart
            cart.clear()
            
            # Send email notification
            if settings.EMAIL_HOST_USER:
                try:
                    subject = f'Order #{order.id} Confirmation'
                    message = render_to_string('orders/order_email.html', {
                        'order': order,
                        'items': order.items.all()
                    })
                    email = EmailMessage(
                        subject,
                        message,
                        settings.DEFAULT_FROM_EMAIL,
                        [order.email]
                    )
                    email.content_subtype = 'html'
                    email.send()
                except Exception as e:
                    print(f"Email sending failed: {e}")
            
            # Redirect to success page
            return redirect('orders:order_created', order_id=order.id)
    else:
        # Pre-fill form for authenticated users
        initial_data = {}
        if request.user.is_authenticated:
            initial_data = {
                'first_name': request.user.first_name,
                'last_name': request.user.last_name,
                'email': request.user.email,
            }
        form = OrderCreateForm(initial=initial_data)
    
    context = {
        'cart': cart,
        'form': form,
        'page_title': 'Checkout'
    }
    return render(request, 'orders/order_create.html', context)

def order_created(request, order_id):
    order = get_object_or_404(Order, id=order_id)
    return render(request, 'orders/order_created.html', {'order': order})

def admin_order_detail(request, order_id):
    order = get_object_or_404(Order, id=order_id)
    return render(request, 'admin/orders/order/detail.html', {'order': order})