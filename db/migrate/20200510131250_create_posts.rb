class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts, id: :integer do |t|
      t.string :comment
      t.integer :user_id, foreign_key: true
      t.integer :group_id, foreign_key: true
      t.timestamps
    end
  end
end
