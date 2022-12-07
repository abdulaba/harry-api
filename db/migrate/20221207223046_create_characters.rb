class CreateCharacters < ActiveRecord::Migration[7.0]
  def change
    create_table :characters do |t|
      t.string :name
      t.string :actor
      t.text :review
      t.string :image_url

      t.timestamps
    end
  end
end
