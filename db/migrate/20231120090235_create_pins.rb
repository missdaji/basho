class CreatePins < ActiveRecord::Migration[7.1]
  def change
    create_table :pins do |t|
      t.string :name
      t.string :address
      t.float :longitude
      t.float :latitude
      t.string :comments
      t.string :icon
      t.integer :rating
      t.boolean :visited
      t.boolean :private
      t.string :picture_url
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
