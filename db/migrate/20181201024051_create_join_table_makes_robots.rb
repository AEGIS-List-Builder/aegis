Sequel.migration do
  change do
    create_table :makes_robots do
      foreign_key :make_id, :makes, null: false
      foreign_key :robot_id, :robots, null: false
      primary_key [:robot_id, :make_id]
      index [:robot_id, :make_id]
    end
  end
end
