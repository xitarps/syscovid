class CreateSocialDistances < ActiveRecord::Migration[6.0]
  def change
    create_table :social_distances do |t|
      t.integer :how_many_residents
      t.integer :residence_type
      t.integer :bedrooms
      t.integer :bathrooms
      t.integer :rooms
      t.integer :many_contacts
      t.integer :been_outdoor
      t.integer :many_times_outdoor
      t.integer :supermarket
      t.integer :pharmacy
      t.integer :health_service
      t.integer :commerce
      t.integer :market
      t.integer :workplace
      t.integer :other_places
      t.integer :public_transportation
      t.integer :many_transportations
      t.integer :bus
      t.integer :subway
      t.integer :train
      t.integer :transport_apps
      t.integer :car
      t.integer :bicycle
      t.integer :taxi
      t.integer :other_transportations
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
