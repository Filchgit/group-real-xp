class CreateBookings < ActiveRecord::Migration[6.1]
  def change
    create_table :bookings do |t|
      t.string :status
      t.string :payment_status
      t.integer :total_price
      t.date :booked_start_date
      t.date :booked_end_date
      t.references :users, null: false, foreign_key: true
      t.references :experience, null: false, foreign_key: true

      t.timestamps
    end
  end
end
