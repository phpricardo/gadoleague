class CreateLeagues < ActiveRecord::Migration[5.2]
  def change
    create_table :leagues do |t|
      t.text :name_cattle_league
      t.integer :year

      t.timestamps
    end
  end
end
