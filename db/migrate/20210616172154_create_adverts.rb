class CreateAdverts < ActiveRecord::Migration[6.1]
  def change
    create_table :adverts do |t|
      t.string :title
      t.string :description
      t.integer :salary
      t.integer :experience
      t.integer :job_id
      

      t.timestamps
    end
  end
end
