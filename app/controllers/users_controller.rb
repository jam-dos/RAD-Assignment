class UsersController < ApplicationController
  def new
    @user = User.new
  end
  
  def create
    @user = Customer.new(customer_params)
    if @user.save
      @user.savedlist_id = @currentUserSavedlist.id
      @user.cart_id = Cart.create().id
      redirect_back fallback_location: root_path, success: 'Thank you for Signing Up!'
      # redirect_to root_path, success: "Thank you for Signing Up!"
    else
      render 'new', error: "Invalid Username or Password! Please try again."
    end
  end
  
  
  private
    def customer_params
      params.require(:user).permit(:email, :password, :password_confirmation)
    end
end
