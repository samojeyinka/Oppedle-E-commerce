# app/controllers/orders_controller.rb
class OrdersController < ApplicationController
  before_action :authenticate_user!

  def index
    @orders = current_user.orders.includes(cart: :cart_items).order(created_at: :desc)
  end

  def new
    @order = Order.new
    @cart_items = current_cart.cart_items.includes(:product)
  end


  def create
    @order = Order.new(order_params)
    @order.cart = current_cart
    @order.user = current_user
    @order.total_price = current_cart.cart_items.sum { |item| item.quantity * item.product.price }
    if @order.save
      current_cart.cart_items.includes(:product).each do |cart_item|
        @order.order_items.create!(
          product: cart_item.product,
          quantity: cart_item.quantity
        )
      end
      current_cart.cart_items.destroy_all
      session[:cart_id] = nil
      redirect_to root_path, notice: "Order was successfully placed."
    else
      @cart_items = current_cart.cart_items.includes(:product)
      render :new
    end
  end


  private

  def order_params
    params.require(:order).permit(:email, :address)
  end
end
