# frozen_string_literal: true

class AegisSchema < GraphQL::Schema
  mutation(Types::MutationType)
  query(Types::QueryType)
end
