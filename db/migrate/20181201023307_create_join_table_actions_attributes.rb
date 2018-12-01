Sequel.migration do
  change do
    create_table :actions_attributes do
      foreign_key :action_id, :actions, null: false
      foreign_key :attribute_id, :attributes, null: false
      primary_key [:action_id, :attribute_id]
      index [:action_id, :attribute_id]
    end
  end
end
