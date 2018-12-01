Sequel.migration do
  change do
    create_table :passives_robots do
      foreign_key :passive_id, :passives, null: false
      foreign_key :robot_id, :robots, null: false
      primary_key [:passive_id, :robot_id]
      index [:passive_id, :robot_id]
    end
  end
end
