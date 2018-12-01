Sequel.migration do
  change do
    create_table :robots_teams do
      foreign_key :robot_id, :robots, null: false
      foreign_key :team_id, :teams, null: false
      primary_key [:robot_id, :team_id]
      index [:robot_id, :team_id]
    end
  end
end
