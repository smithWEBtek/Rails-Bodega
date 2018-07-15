class CartsController < ApplicationController
  def show
    @user = User.find(params[:user_id])
  end

  def new
    @item = Item.new
    @user = User.find(params[:user_id])
    @purchase = Purchase.new
  end

end
