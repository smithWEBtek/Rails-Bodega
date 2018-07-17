class CartController < ApplicationController
  def index
    @items = Item.all
    @user = User.find(params[:user_id])
  end

  def show
    @item = User.items.find(params[:id])
  end
end
