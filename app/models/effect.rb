class Effect < Sequel::Model
  one_to_many :actions
end
