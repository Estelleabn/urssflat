class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.datetime :start_date
      t.datetime :end_date
      t.belongs_to :flat, index: true
      t.belongs_to :booker, index: true

      t.timestamps
    end
  end
end
