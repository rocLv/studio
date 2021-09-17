class TaskCatalog < ApplicationRecord
  has_many :tasks
  belongs_to :course
end
