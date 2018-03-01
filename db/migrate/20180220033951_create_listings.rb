class CreateListings < ActiveRecord::Migration[5.0]
  def change
    create_table :listings do |t|
      t.string :city
      t.text :description
      t.integer :people
      t.references :user, index: true, foreign_key: true
      t.timestamps
    end
  end
end
