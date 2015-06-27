class CreateBackedProjects < ActiveRecord::Migration
  def change
    create_table :backed_projects do |t|
      t.belongs_to :backer, index: true
      t.belongs_to :project, index: true
    end
  end
end
