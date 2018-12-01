class Passive < Sequel::Model
  many_to_many :robots
end
