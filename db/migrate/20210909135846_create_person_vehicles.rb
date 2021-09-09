class CreatePersonVehicles < ActiveRecord::Migration[6.1]
  def change
    create_table :person_vehicles do |t|
      t.references :person, null: false, foreign_key: true
      t.references :vehicle, null: false, foreign_key: true

      t.timestamps
    end
  end
end
