class AddSickStatusToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :sick_status, :boolean
  end
end
