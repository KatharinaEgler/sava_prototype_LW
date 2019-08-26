class CreateCircleUpdates < ActiveRecord::Migration[5.2]
  def change
    create_table :circle_updates do |t|
    t.references :circle, foreign_key: true
    t.references :update, foreign_key: true

    t.timestamps
    end
  end
end
