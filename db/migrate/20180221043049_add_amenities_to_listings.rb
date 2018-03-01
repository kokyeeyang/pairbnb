class AddAmenitiesToListings < ActiveRecord::Migration[5.0]
  def change
    add_column :listings, :amenities, :string, array: true, default: []
    add_references :listings, :user, foreign_key: true, index: true
  end
end
