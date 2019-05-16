class CreatePunctuations < ActiveRecord::Migration[5.2]
  def change
    create_table :punctuations do |t|
      t.text :description
      t.integer :points

      t.timestamps
    end
  end
end
