FactoryBot.define do
  factory :cource do
    name { "MyString" }
    lessons_count { 1 }
    students_count { 1 }
    period { 1 }
    price_cent { 1 }
    current_price_cent { 1 }
    coach_id { 1 }
    desc { "MyString" }
  end
end
