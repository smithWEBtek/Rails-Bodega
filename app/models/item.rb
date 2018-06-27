class Item < ActiveRecord::Base
  belongs_to :user
  belongs_to :purchase
  belongs_to :cart

  def buy_item
    # This uses the other methods to let the user know if they can buy the item and updates the purchases info
    enough_money, still_in_stock = meet_requirements
    if enough_money && still_in_stock
      update_puchase
      self.cart << self.purchase
    elsif still_in_stock && !enough_money
      "Sorry. " + not_enough_money
    elsif enough_money && !still_in_stock
      no_more_in_stock
    end
  end


  def meet_requirements
    # Uses the join table to test if the user has enough money to buy the purchase.
    enough_money, still_in_stock = false
    if self.user.money >= self.purchase.price
      enough_money = true
    end
    if self.purchase.quantity > 0
      still_in_stock = true
    end
    return [enough_money, still_in_stock]
  end

  def update_puchase
    # Update that properties of a Purchase and save it
    new_quantity = self.purchase.quantity - 1
    new_money = self.user.money - self.purchase.price
    self.user.update(
      :money => new_money
    )
    self.purchase.update(
      :quantity => new_quantity
    )
  end

  def not_enough_money
    # If you don't have enough money,
    "You don't have enough money to buy #{self.purchase.name}"
  end

  def no_more_in_stock
    # If the purchase isn't in stock you can't buy it.
    "Sorry, there are no more #{self.purchase.name} in stock"
  end

  def cart
    self.cart
  end

  def add_to_cart
    cart << self.purchase
  end

end
