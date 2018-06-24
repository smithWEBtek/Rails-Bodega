class Purchase < ActiveRecord::Base
  has_many :items
  has_many :users, :through => :items
  belongs_to :cart

end
