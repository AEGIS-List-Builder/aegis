class Make < Sequel::Model
  many_to_many :robots
end
