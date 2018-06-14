class Item < ActiveRecord::Base
  :belongs_to :users
  :belongs_to :purchases
end
