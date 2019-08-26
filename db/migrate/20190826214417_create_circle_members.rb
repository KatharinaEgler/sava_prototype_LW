class CreateCircleMembers < ActiveRecord::Migration[5.2]
  def change
    create_table :circle_members do |t|
    t.references :user, foreign_key: true
    t.references :circle, foreign_key: true

    t.timestamps
    end
  end
end
