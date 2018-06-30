class CartsController < ApplicationController
  def show
    @user = User.find(params[:user_id])
  end

  # Should I use a def new to purchase the cart?

  # Should I use a def edit to edit the cart?
  def new
    
  end
end
