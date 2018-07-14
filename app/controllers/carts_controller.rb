class CartsController < ApplicationController
  def show
    @user = User.find(params[:user_id])
  end

  def new
    @item = Item.new
    @items = Item.all
    @user = User.find(params[:user_id])
  end
end
