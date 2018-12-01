# frozen_string_literal: true

class Faction < Sequel::Model
  one_to_many :robots
  one_to_many :commanders
end
