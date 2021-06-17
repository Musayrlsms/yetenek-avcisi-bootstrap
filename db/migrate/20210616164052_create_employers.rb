class CreateEmployers < ActiveRecord::Migration[6.1]
  def change
    create_table :employers do |t|
      t.string :name
      t.string :surname
      t.string :company_name
      t.string :phone_number
      t.string :e_mail
      t.integer :company_id

      t.timestamps
    end
  end
end
