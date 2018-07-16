class ItemsController < ApplicationController

  def new
     # Join table method that creates a new item that connects a user to a purchase
    @item = Item.find_by(:user_id => params[:user_id], :purchase_id => params[:purchase_id])
    binding.pry
    if @item == nil
      @item = Item.create(
        :user_id => params[:user_id],
        :purchase_id => params[:purchase_id],
        :quantity => 1
      )
    else
      @item.quantity += 1
      binding.pry
      # make sure quantity going up by
      # go to item index for a user and show the quantity,
      # Make an edit link next to item, click edit, item show page, and only thing you can change is the quantity, prepopulated input field
    end
    @message = @item.buy_item
    redirect_to user_path(@item.user, :message => @message)
  end


end
