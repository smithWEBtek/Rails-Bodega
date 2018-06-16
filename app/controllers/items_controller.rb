class ItemsController < ApplicationController

  def new
    @item = Item.create(
      :user_id => params[:user_id],
      :purchase_id => params[:purchase_id]
    )

    redirect_to user_path(@item.user)
  end

end
