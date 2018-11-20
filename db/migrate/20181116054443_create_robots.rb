Sequel.migration do
  change do

    create_table :robots do
      primary_key :id
      String :name
      Boolean :a_robot_class
      Boolean :e_robot_class
      Boolean :g_robot_class
      Boolean :i_robot_class
      Boolean :s_robot_class
      Integer :move
      Integer :move_type
      Integer :energy_output
      Integer :integrity
      foreign_key :faction_id, :factions
      DateTime :created_at
      DateTime :updated_at
    end

  end
end
