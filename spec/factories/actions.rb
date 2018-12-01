FactoryBot.define do
  factory :action do
    name { "MyString" }
    cost { 1 }
    accuracy { 1 }
    accuracy_type { 1 }
    effect { nil }
    power { 1 }
    range { 1 }
    area { 1 }
    combine { false }
  end
end
