class CartController < ApplicationController
  def index
    binding.pry
    @items = Item.all
    @user = User.find(params[:user_id])

    render 'cart/index', :layout => false
  end

end
