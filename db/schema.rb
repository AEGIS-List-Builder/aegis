Sequel.migration do
  change do
    create_table(:factions) do
      primary_key :id
      column :name, "text"
      column :created_at, "timestamp without time zone"
      column :updated_at, "timestamp without time zone"
    end
    
    create_table(:schema_migrations) do
      column :filename, "text", :null=>false
      
      primary_key [:filename]
    end
    
    create_table(:robots) do
      primary_key :id
      column :name, "text"
      column :a_robot_class, "boolean"
      column :e_robot_class, "boolean"
      column :g_robot_class, "boolean"
      column :i_robot_class, "boolean"
      column :s_robot_class, "boolean"
      column :move, "integer"
      column :move_type, "integer"
      column :energy_output, "integer"
      column :integrity, "integer"
      foreign_key :faction_id, :factions, :key=>[:id]
      column :created_at, "timestamp without time zone"
      column :updated_at, "timestamp without time zone"
    end
  end
end
              Sequel.migration do
                change do
                  self << "SET search_path TO \"$user\", public"
                  self << "INSERT INTO \"schema_migrations\" (\"filename\") VALUES ('20181116054442_create_factions.rb')"
self << "INSERT INTO \"schema_migrations\" (\"filename\") VALUES ('20181116054443_create_robots.rb')"
                end
              end
