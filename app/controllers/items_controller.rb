class ItemsController < ApplicationController

  def new
     # Join table method that creates a new item that connects a user to a purchase
    @item = Item.create(
      :user_id => params[:user_id],
      :purchase_id => params[:purchase_id]
    )
    @message = @item.buy_item
    redirect_to user_path(@item.user, :message => @message)
  end


end
