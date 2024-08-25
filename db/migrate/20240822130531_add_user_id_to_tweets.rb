class AddUserIdToTweets < ActiveRecord::Migration[7.0]
  def change
    if table_exists?(:tweets)
      unless column_exists?(:tweets, :user_id)
        add_column :tweets, :user_id, :integer
      end
    end
  end
end
