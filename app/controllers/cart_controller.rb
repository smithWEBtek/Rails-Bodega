class CartController < ApplicationController
  def index
    @items = Item.all
    @user = User.find(params[:user_id])
  end

end
