class ChangeProjectIdColumnInBackedProjects < ActiveRecord::Migration
  def change
    rename_column :backed_projects, :project_id, :backed_project_id
  end
end
