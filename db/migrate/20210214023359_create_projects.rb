class CreateProjects < ActiveRecord::Migration[6.1]
  def change
    create_table :projects do |t|
      t.string :name
      t.text :image
      t.text :description
      t.string :project_link
      t.string :git_hub
      t.string :video
      t.references :project_folder, null: false, foreign_key: true

      t.timestamps
    end
  end
end
