class AccountsController < ApplicationController

  def new
    @account = Account.new
  end

  def create
    @account = Account.new(account_params)
    if @account.save
      flash[:notice] = "You've successfully signed up!"
      session[:account_id] = @account.id
      redirect_to "/"
    else
      flash[:alert] = "There was a problem signing up."
      redirect_to '/signup'
    end
  end

  private

  def account_params
    params.require(:account).permit(:display_name, :email, :password, :password_confirmation)
  end
end
