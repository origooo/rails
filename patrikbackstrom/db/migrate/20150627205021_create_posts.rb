class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :index
      t.string :title
      t.text :text
      t.string :author

      t.timestamps null: false
    end
  end
end
