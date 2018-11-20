class Faction < Sequel::Model
  one_to_many :robots
end
