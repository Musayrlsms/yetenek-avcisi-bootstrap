class CreateWorkers < ActiveRecord::Migration[6.1]
  def change
    create_table :workers do |t|
      t.string :name
      t.string :surname
      t.integer :age
      t.string :e_mail
      t.string :phone_number
      t.integer :job_id

      t.timestamps
    end
  end
end
