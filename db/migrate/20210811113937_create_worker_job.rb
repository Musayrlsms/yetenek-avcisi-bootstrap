class CreateWorkerJob < ActiveRecord::Migration[6.1]
  def change
    create_table :worker_jobs do |t|
      t.integer :advert_id
      t.integer :worker_id

      t.timestamps
    end
  end
end
