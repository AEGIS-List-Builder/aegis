class Commander < Sequel::Model
  many_to_one :faction
  many_to_many :robots
  one_to_many :teams
end
