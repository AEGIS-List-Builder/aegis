class Action < Sequel::Model
  many_to_one :effect
  many_to_many :attributes
  many_to_many :robots
end
