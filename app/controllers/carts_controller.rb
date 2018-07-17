class CartsController < ApplicationController
  def show
    @user = User.find(params[:user_id])
  end

  def new
    @user = User.find(params[:user_id])
    @purchase = Purchase.new
  end

end
