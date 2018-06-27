class CreateOrderItems < ActiveRecord::Migration[5.2]
  def change
    create_table :order_items do |t|
      t.belongs_to :purchase, foreign_key: true
      t.belongs_to :cart, foreign_key: true
      t.string :name
      t.decimal :price
      t.decimal :quantity

      t.timestamps
    end
  end
end
