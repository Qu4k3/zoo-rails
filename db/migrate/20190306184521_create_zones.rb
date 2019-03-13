class CreateZones < ActiveRecord::Migration[5.2]
  def change
    create_table :zones do |t|
      t.string :name
      t.string :clima
      t.string :weather
      t.integer :temperature
      t.integer :humidity

      t.timestamps
    end
  end
end
