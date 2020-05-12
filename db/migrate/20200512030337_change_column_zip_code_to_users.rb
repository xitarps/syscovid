class ChangeColumnZipCodeToUsers < ActiveRecord::Migration[6.0]
  def change
    rename_column :users, :zip_code, :user_zip_code
  end
end
