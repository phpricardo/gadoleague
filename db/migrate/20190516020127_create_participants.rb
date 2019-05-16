class CreateParticipants < ActiveRecord::Migration[5.2]
  def change
    create_table :participants do |t|
      t.string :name_cattle
      t.integer :score

      t.timestamps
    end
  end
end
