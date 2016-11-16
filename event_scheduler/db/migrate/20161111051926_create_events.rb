class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.string :venue
      t.date :date
      t.time :time
      t.string :desc
      t.boolean :status
      t.integer :owner_id

      t.timestamps null: false
    end
  end
end
