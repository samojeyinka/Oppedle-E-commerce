class AdminController < ApplicationController
    layout "admin"
    before_action :authenticate_user!
    before_action :require_admin!

    def index
    end

    private

    def require_admin!
      unless current_user.admin?
        redirect_to root_path, alert: "You are not authorized to access this page."
      end
    end
end
