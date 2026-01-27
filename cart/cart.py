from django.conf import settings
from products.models import Product
from .models import Cart as CartModel, CartItem

class Cart:
    def __init__(self, request):
        self.request = request
        self.session = request.session
        cart_id = self.session.get('cart_id')
        
        if cart_id:
            try:
                self.cart_model = CartModel.objects.get(id=cart_id)
            except CartModel.DoesNotExist:
                self.cart_model = self._create_new_cart()
        else:
            self.cart_model = self._create_new_cart()
        
        self.session['cart_id'] = self.cart_model.id
    
    def _create_new_cart(self):
        cart = CartModel.objects.create(
            user=self.request.user if self.request.user.is_authenticated else None,
            session_key=self.session.session_key if not self.request.user.is_authenticated else None
        )
        return cart
    
    def add(self, product, quantity=1, override_quantity=False):
        product_id = str(product.id)
        
        try:
            cart_item = CartItem.objects.get(cart=self.cart_model, product=product)
            if override_quantity:
                cart_item.quantity = quantity
            else:
                cart_item.quantity += quantity
            cart_item.save()
        except CartItem.DoesNotExist:
            CartItem.objects.create(
                cart=self.cart_model,
                product=product,
                quantity=quantity
            )
    
    def remove(self, product):
        try:
            cart_item = CartItem.objects.get(cart=self.cart_model, product=product)
            cart_item.delete()
        except CartItem.DoesNotExist:
            pass
    
    def __iter__(self):
        cart_items = self.cart_model.items.select_related('product')
        for item in cart_items:
            yield {
                'product': item.product,
                'quantity': item.quantity,
                'total_price': item.total_price
            }
    
    def __len__(self):
        return self.cart_model.total_quantity
    
    def get_total_price(self):
        return self.cart_model.total_price
    
    def clear(self):
        self.cart_model.items.all().delete()
    
    def save(self):
        self.session.modified = True