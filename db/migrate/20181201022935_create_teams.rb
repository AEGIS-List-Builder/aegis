Sequel.migration do
  change do

    create_table :teams do
      primary_key :id
      String :name
      foreign_key :commander_id, :commanders
      DateTime :created_at
      DateTime :updated_at
    end

  end
end
