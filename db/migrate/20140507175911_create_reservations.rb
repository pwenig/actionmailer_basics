class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.integer :conference_room_id
      t.index :conference_room_id
      t.integer :meeting_id
      t.index :meeting_id
      t.date :starts_at

      t.timestamps
    end
  end
end
