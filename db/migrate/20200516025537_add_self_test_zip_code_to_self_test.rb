class AddSelfTestZipCodeToSelfTest < ActiveRecord::Migration[6.0]
  def change
    add_column :self_tests, :self_test_zip_code, :string
  end
end
