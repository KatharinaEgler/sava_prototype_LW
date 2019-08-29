class AddLocationToSlots < ActiveRecord::Migration[5.2]
  def change
    add_column :slots, :location, :string
  end
end
