class AddColumnsToProjectContributions < ActiveRecord::Migration
  def change
    add_column :project_contributions, :comment, :string
    add_column :project_contributions, :amount, :float
  end
end
