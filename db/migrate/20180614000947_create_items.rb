class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.belongs_to :user, foreign_key: true
      t.belongs_to :purchase, foreign_key: true
      t.integer :quantity

    end
  end
end
