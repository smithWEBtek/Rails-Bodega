class User < ActiveRecord::Base
  has_secure_password

  has_many :items
  has_many :purchases, :through => :items

  def num_of_items
    self.purchases.count
  end
end
