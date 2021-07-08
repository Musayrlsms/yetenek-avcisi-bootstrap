class AddColumnsToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :surname, :string
    add_column :users, :company_name, :string
    add_column :users, :phone_number, :string
    add_column :users, :company_id, :integer
  end
end
