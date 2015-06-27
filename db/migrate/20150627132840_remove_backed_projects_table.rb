class RemoveBackedProjectsTable < ActiveRecord::Migration
  def change
    drop_table :backed_projects
  end
end
