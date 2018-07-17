class User < ActiveRecord::Base
  has_secure_password

  has_many :items
  has_many :purchases, :through => :items

  accepts_nested_attributes_for :items

  def cart_quantity
    # Gives the total quantity of items of a user
    self.items.sum do |item|
      item.quantity
    end
  end

  def cart_price
    # Adds up the total price of the users item
    self.items.sum do |item|
      Purchase.find(item.purchase_id).price * item.quantity
    end
  end


end
