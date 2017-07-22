class CreatePaintings < ActiveRecord::Migration[5.1]
  def change
    create_table :paintings do |t|
      t.string :p_name
      t.integer :gallery_id

      t.timestamps
    end
  end
end
