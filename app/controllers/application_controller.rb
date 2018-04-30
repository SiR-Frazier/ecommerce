class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_account

  def current_account
    if session[:account_id]
      @current_account = Account.find(session[:account_id])
    end
  end

    def authorize
      if !current_account
        flash[:alert] = "You aren't authorized to visit that page."
        redirect_to '/'
      end
    end
    
    def current_order
    if session[:order_id]
      Order.find(session[:order_id])
    else
      Order.new
    end
  end
end
