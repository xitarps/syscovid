class ChangeUserIdFromSelfTestToNull < ActiveRecord::Migration[6.0]
  def change
    change_column :self_tests, :user_id, :integer, null: true
  end
end
