class CreatePeople < ActiveRecord::Migration[6.1]
  def change
    create_table :people do |t|
      t.string :name
      t.string :height
      t.string :mass
      t.string :hair_color
      t.string :skin_color
      t.string :eye_color
      t.string :birth_year
      t.string :gender
      t.integer :planet_id
      t.integer :specie_id

      t.timestamps
    end
  end
end
