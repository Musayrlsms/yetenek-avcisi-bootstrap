class AddUserIdToAdvert < ActiveRecord::Migration[6.1]
  def change
    add_column :adverts, :user_id, :integer
  end
end
