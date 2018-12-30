class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :password_digest, :money, :admin
  has_many :items
  has_many :purchases, :through => :items
end
