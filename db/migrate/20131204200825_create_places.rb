class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.string :location
      t.string :url
      t.text :description

      t.timestamps
    end
  end
end
