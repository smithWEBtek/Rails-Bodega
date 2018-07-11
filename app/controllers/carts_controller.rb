class CartsController < ApplicationController
  def show
    @user = User.find(params[:user_id])
  end

  def new
    @item = Item.new
    @purchases = Purchase.all
  end
end
