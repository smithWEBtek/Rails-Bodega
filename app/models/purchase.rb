class Purchase < ActiveRecord::Base
  has_many :items
  has_many :users, :through => :items

  def self.most_expensive
    order("price DESC").first
  end

  def self.least_expensive
    order("price ASC").first
  end

end
