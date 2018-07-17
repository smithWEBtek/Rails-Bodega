class CartController < ApplicationController
  def index
    @items = Item.all
    @user = User.find(params[:user_id])
  end

  def new
    @user = User.find(params[:user_id])
    @purchase = Purchase.new
  end

end
