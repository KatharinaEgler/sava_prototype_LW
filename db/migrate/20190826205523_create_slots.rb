class CreateSlots < ActiveRecord::Migration[5.2]
  def change
    create_table :slots do |t|
      t.date :date
      t.integer :hour
      t.boolean :booked
      t.references :user, foreign_key: true
      t.references :booker, foreign_key: { to_table: 'users'}

      t.timestamps
    end
  end
end
