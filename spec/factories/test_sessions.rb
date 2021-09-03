FactoryBot.define do
  factory :test_session do
    user_id { 1 }
    task_catalog_id { 1 }
    status { 1 }
    answer_status { "" }
  end
end
