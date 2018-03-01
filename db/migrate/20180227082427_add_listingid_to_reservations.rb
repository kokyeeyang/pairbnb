class AddListingidToReservations < ActiveRecord::Migration[5.0]
  def change
  	add_reference :reservations, :listing, foreign_key: true, index: true
  end
end
