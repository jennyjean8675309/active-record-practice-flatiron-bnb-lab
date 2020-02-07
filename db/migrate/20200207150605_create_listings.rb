class CreateListings < ActiveRecord::Migration[5.0]
  def change
    create_table :listings do |t|
      t.integer :host_id
      t.integer :neighborhood_id
      t.string :title
      t.text :description
      t.string :address
      t.string :listing_type
      t.integer :price
    end
  end
end
