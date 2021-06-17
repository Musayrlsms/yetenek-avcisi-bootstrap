class CreateCompanies < ActiveRecord::Migration[6.1]
  def change
    create_table :companies do |t|
      t.string :name
      t.integer :tax_number
      t.integer :type

      t.timestamps
    end
  end
end
