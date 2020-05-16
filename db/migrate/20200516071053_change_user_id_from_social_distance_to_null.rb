class ChangeUserIdFromSocialDistanceToNull < ActiveRecord::Migration[6.0]
  def change
    change_column :social_distances, :user_id, :integer, null: true
  end
end
