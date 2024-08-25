class AddUserIdAndPrototypeIdToComments < ActiveRecord::Migration[7.0]
  def change
    add_column :comments, :user_id, :integer unless column_exists?(:comments, :user_id)
    add_column :comments, :prototype_id, :integer unless column_exists?(:comments, :prototype_id)
  end
end
