Sequel.migration do
  change do

    create_table :actions do
      primary_key :id
      String :name
      Integer :cost
      Integer :accuracy
      Integer :accuracy_type
      foreign_key :effect_id, :effects
      Integer :power
      Integer :range
      Integer :area
      Boolean :combine
      DateTime :created_at
      DateTime :updated_at
    end

  end
end
