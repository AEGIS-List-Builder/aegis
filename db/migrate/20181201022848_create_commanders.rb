Sequel.migration do
  change do

    create_table :commanders do
      primary_key :id
      String :name
      foreign_key :faction_id, :factions
      String :ability
      DateTime :created_at
      DateTime :updated_at
    end

  end
end
