class PurchasesController < ApplicationController
  def index
    @purchases = Purchase.all
  end

  def show

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
end
