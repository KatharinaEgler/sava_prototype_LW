class RenameUpdatesTable < ActiveRecord::Migration[5.2]
  def change
    rename_table :updates, :status_updates
  end
end
