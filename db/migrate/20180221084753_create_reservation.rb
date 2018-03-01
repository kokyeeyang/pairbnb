class CreateReservation < ActiveRecord::Migration[5.0]
  def change
    create_table :reservations do |t|
    	t.string :stringart_date
    	t.string :end_date

    	t.timestamp
    end
  end
end
