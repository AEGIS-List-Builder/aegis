class Team < Sequel::Model
  many_to_many :robots
  many_to_one :commander
end
