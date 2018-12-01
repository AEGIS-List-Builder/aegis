Sequel.migration do
  change do

    create_table :attributes do
      primary_key :id
      String :name
      String :description
      DateTime :created_at
      DateTime :updated_at
    end

  end
end
