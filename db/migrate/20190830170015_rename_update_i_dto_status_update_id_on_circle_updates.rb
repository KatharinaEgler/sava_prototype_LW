class RenameUpdateIDtoStatusUpdateIdOnCircleUpdates < ActiveRecord::Migration[5.2]
  def change
    rename_column :circle_updates, :update_id, :status_update_id
  end
end
