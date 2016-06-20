class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.string, :name
      t.string :table
      t.string :integer,
      t.string :guest
      t.string :integer,
      t.string :time
      t.string :time

      t.timestamps
    end
  end
end
