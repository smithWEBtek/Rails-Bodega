class PurchaseSerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :quantity
  has_many :items
  has_many :users, :through => :items
end
