class CreateArmors < ActiveRecord::Migration[6.0]
  def change
    create_table :armors do |t|
      t.references :robot, null: false, foreign_key: true
      t.string :armor_type
      t.string :serial_number

      t.timestamps
    end
  end
end
