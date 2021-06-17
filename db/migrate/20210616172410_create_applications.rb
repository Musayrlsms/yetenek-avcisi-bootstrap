class CreateApplications < ActiveRecord::Migration[6.1]
  def change
    create_table :applications do |t|
      t.integer :advert_id
      t.integer :worker_id

      t.timestamps
    end
  end
end
