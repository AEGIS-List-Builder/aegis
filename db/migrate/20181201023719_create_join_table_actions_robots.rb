Sequel.migration do
  change do
    create_table :actions_robots do
      foreign_key :action_id, :actions, null: false
      foreign_key :robot_id, :robots, null: false
      primary_key [:action_id, :robot_id]
      index [:action_id, :robot_id]
    end
  end
end
