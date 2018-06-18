class ItemsController < ApplicationController

  def new
    @item = Item.create(
      :user_id => params[:user_id],
      :purchase_id => params[:purchase_id]
    )
    @message = @item.buy_item
    redirect_to user_path(@item.user, :message => @message)
  end

end
