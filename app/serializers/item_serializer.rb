class ItemSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :purchase_id, :quantity
  belongs_to :user
  belongs_to :purchase
end
