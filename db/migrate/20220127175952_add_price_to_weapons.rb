class AddPriceToWeapons < ActiveRecord::Migration[6.0]
  def change
    add_column :weapons, :price, :integer
  end
end
