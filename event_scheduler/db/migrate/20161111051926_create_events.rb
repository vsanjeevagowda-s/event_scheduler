class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.string :venue
      t.string :date
      t.string :time
      t.string :desc
      t.string :invitee
      t.string :status
      t.integer :owner_id

      t.timestamps null: false
    end
  end
end
