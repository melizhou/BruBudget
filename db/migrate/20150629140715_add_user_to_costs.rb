class AddUserToCosts < ActiveRecord::Migration
  def change
    add_column :costs, :user_id, :integer
  end
end
