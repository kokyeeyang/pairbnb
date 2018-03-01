class AddUseridToReservations < ActiveRecord::Migration[5.0]
  def change
    add_reference :reservations, :user, foreign_key: true, index: true	
  end
end
