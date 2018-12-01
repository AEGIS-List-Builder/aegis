Sequel.migration do
  change do
    create_table :commanders_robots do
      foreign_key :commander_id, :commanders, null: false
      foreign_key :robot_id, :robots, null: false
      primary_key [:robot_id, :commander_id]
      index [:robot_id, :commander_id]
    end
  end
end
