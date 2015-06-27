class CreateProjectsTags < ActiveRecord::Migration
  def change
    create_table :projects_tags do |t|
      t.belongs_to :tag, index: true
      t.belongs_to :project, index: true
    end
  end
end
