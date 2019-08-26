class CreateUpdates < ActiveRecord::Migration[5.2]
  def change
    create_table :updates do |t|
    t.string :title
    t.string :content
    t.string :photo
    t.references :user, foreign_key: true

    t.timestamps
    end
  end
end
