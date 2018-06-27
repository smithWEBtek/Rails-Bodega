class CreateOrderItems < ActiveRecord::Migration[5.2]
  def change
    create_table :order_items do |t|
      t.purchase :belongs_to
      t.cart :belongs_to
      t.decimal :price
      t.decimal :quantity

      t.timestamps
    end
  end
end
