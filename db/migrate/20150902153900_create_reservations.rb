class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.date :checkin
      t.date :checkout
      t.references :listing, index: true
      t.references :guest, index: true

      t.timestamps null: false
    end
    add_foreign_key :reservations, :listings
    add_foreign_key :reservations, :guests
  end
end
