class CreateProjectFolders < ActiveRecord::Migration[6.1]
  def change
    create_table :project_folders do |t|
      t.string :name
      t.integer :number_of_proj
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
