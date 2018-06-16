class PurchasesController < ApplicationController
  def index
    @purchases = Purchase.all
  end

  def show
    @item = Item.new
  end

  def new
    @purchase = Purchase.new
  end

  def edit
  end

  def create
  end

  def update
  end

  def destroy
  end

  private

  def set_purchase
    @purchase = Purchase.find(params[:id])
  end

  def purchase_params
    params.require(:purchase).permit(
      :name,
      :price,
      :quantity
    )
  end
end
