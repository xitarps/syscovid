class AddSocialDistanceZipCodeToSocialDistance < ActiveRecord::Migration[6.0]
  def change
    add_column :social_distances, :social_distance_zip_code, :string
  end
end
