class Task < ApplicationRecord
  has_many :task_options
  belongs_to :task_catalog
end
