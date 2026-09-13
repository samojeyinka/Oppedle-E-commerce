class ApplicationController < ActionController::Base
    before_action :set_cart, :reject_stale_sessions
    helper_method :current_cart

    private

    def set_cart
      if session[:cart_id]
        @current_cart = Cart.find_by(id: session[:cart_id])
      end
      unless @current_cart
        @current_cart = Cart.create
        session[:cart_id] = @current_cart.id
      end
    end

    def reject_stale_sessions
      if user_signed_in? && !current_user.is_a?(User)
        sign_out(:user)
      end
    end

    def current_cart
      @current_cart
    end

    def after_sign_in_path_for(resource)
      if resource.admin?
        admin_path
      else
        edit_user_registration_path
      end
    end
end
