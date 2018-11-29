# frozen_string_literal: true

class Robot < Sequel::Model
  many_to_one :faction

  @@robot_classes = columns.select { |column| column.ends_with?("robot_class") }

  def level
    @@robot_classes.count { |robot_class| send("#{robot_class}?") }
  end
end
