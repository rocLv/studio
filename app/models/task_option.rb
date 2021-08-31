class TaskOption < ApplicationRecord
  belongs_to :task
  enum answer: {no: 0, yes: 1}
end
