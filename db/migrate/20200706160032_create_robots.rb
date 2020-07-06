class CreateRobots < ActiveRecord::Migration[6.0]
  def change
    create_table :robots do |t|
      t.string :robot_type
      t.string :serial_number
      t.string :name

      t.timestamps
    end
  end
end
