# frozen_string_literal: true

class Robot < Sequel::Model
  many_to_one :faction
  many_to_many :actions
  many_to_many :passives
  many_to_many :makes
  many_to_many :teams

  @@robot_classes = columns.select { |column| column.ends_with?("robot_class") }

  def level
    @@robot_classes.count { |robot_class| send("#{robot_class}?") }
  end
end
