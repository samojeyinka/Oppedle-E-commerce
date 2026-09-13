class CartsController < ApplicationController
  def show
    @cart = current_cart
    @cart_items = @cart.cart_items.includes(:product)
  end

    def update
      @cart = current_cart
      cart_item = @cart.cart_items.find(params[:cart_item_id])
      if params[:quantity].to_i > 0
        cart_item.update(quantity: params[:quantity].to_i)
      else
        cart_item.destroy
      end
      redirect_to cart_path, notice: "Cart was updated."
    end

    def destroy
      current_cart.cart_items.destroy_all
      session[:cart_id] = nil
      redirect_to root_path, notice: "Cart was successfully cleared."
    end
end
