class CreateTableProjectContributions < ActiveRecord::Migration
  def change
    create_table :table_project_contributions do |t|
      t.belongs_to :user, index: true
      t.belongs_to :project, index: true
    end
  end
end
