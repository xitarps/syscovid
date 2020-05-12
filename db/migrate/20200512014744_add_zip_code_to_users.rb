class AddZipCodeToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :zip_code, :string
  end
end
