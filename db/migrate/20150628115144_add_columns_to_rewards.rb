class AddColumnsToRewards < ActiveRecord::Migration
  def change
    add_column :rewards, :price, :float
    add_column :rewards, :description, :string
  end
end
