FactoryBot.define do
  factory :task_option do
    task_id { 1 }
    desc { "MyString" }
    answer { false }
  end
end
