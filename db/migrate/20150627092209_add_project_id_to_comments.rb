class AddProjectIdToComments < ActiveRecord::Migration
  def change
    add_index :comments, :project_id
  end
end
