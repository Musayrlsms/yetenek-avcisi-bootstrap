class RemoveEmployerIdFromAdverts < ActiveRecord::Migration[6.1]
  def change
    remove_column :adverts, :employer_id, :integer
  end
end
