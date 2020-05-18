class RenameGroupIdColumnToPosts < ActiveRecord::Migration[5.2]
  def change
    rename_column :posts, :group_id, :gender
  end
end
