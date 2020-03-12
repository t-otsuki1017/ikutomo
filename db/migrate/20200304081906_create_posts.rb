class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.integer :category_id
      t.integer :member_id
      t.string :title
      t.string :body
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps
    end
  end
end
