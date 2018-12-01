Sequel.migration do
  change do

    create_table :passives do
      primary_key :id
      String :name
      String :description
      Boolean :combine
      DateTime :created_at
      DateTime :updated_at
    end

  end
end
