class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.string :name
      t.integer :table
      t.integer :guest
      t.time :time

      t.timestamps
    end
  end
end
