class ChangeUsersPriceToDecimal < ActiveRecord::Migration[5.2]
  change_column :users, :money, :decimal
end
