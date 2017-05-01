class AddImageToProjects < ActiveRecord::Migration[5.0]
  def change
    add_column :projects, :image, :string
    add_column :projects, :project_id, :integer
  end
end
