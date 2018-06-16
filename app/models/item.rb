class Item < ActiveRecord::Base
  belongs_to :users
  belongs_to :purchases

  def meet_requirements
    enough_money, still_in_stock = false
    if self.user.money >= self.purchase.price
      enough_money = true
    end
    if self.purchase.quantity > 0
      still_in_stock = true
    end
    return [enough_money, still_in_stock]
  end

  def buy_item
    new_quantity = self.purchase.quantity - 1
    new_money = self.user.money - self.purchase.price
    self.user.update(
      :money => new_money
    )
    self.purchase.update(
      :quantity => new_quantity
    )
  end

  def Not_enough_money
    "You don't have enough money to buy #{self.purchase.name}"
  end

  def no_more_in_stock
    "Sorry, there are no more #{self.purchase.name} in stock"
  end
end
