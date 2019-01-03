class CartController < ApplicationController
<<<<<<< Updated upstream
	def index
		binding.pry

    # @items = Item.all
    @user = User.find(params[:user_id])
=======
  def index
    # @items = Item.all
    # @items = @user.items
    @user = User.find(params[:user_id])
 
    render 'cart/index', :layout => false
>>>>>>> Stashed changes
  end

end
