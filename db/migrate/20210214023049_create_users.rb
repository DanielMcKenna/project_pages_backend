class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :profession
      t.text :bio
      t.text :image
      t.string :linked_in
      t.string :twitter
      t.string :instagram
      t.string :git_hub

      t.timestamps
    end
  end
end
