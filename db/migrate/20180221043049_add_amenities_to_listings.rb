class AddAmenitiesToListings < ActiveRecord::Migration[5.0]
  def change
    add_column :listings, :amenities, :string, array: true, default: []
  end
end
