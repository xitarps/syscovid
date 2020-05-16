class AddResultToSelfTest < ActiveRecord::Migration[6.0]
  def change
    add_column :self_tests, :result, :integer
  end
end
