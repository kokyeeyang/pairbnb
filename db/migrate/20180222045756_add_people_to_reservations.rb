class AddPeopleToReservations < ActiveRecord::Migration[5.0]
  def change
    add_column :reservations, :people, :integer
  end
end
