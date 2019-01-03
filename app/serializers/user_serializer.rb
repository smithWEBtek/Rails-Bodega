class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :money, :admin
  has_many :items
  has_many :purchases, :through => :items
end
