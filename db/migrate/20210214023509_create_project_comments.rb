class CreateProjectComments < ActiveRecord::Migration[6.1]
  def change
    create_table :project_comments do |t|
      t.text :body
      t.references :user, null: false, foreign_key: true
      t.references :project, null: false, foreign_key: true

      t.timestamps
    end
  end
end
