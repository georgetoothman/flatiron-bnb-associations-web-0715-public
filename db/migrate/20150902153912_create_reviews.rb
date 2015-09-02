class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :description
      t.integer :rating
      t.references :host, index: true
      t.references :reservation, index: true
      t.references :guest, index: true

      t.timestamps null: false
    end
    add_foreign_key :reviews, :hosts
    add_foreign_key :reviews, :reservations
    add_foreign_key :reviews, :guests
  end
end
