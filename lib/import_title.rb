require 'ostruct'
require 'active_support/json'

json = File.read "/Users/i/Documents/A培训创业/kodecloud/mock3.json"
parsed_json = ActiveSupport::JSON.decode json
questions = parsed_json["questions"]

questions.each do |question|
  task = Task.new
  os = OpenStruct.new question
  Task.columns.map(&:name).each do |col|
    task.send "#{col}=", os.send(col) unless col == 'id'
  end
  task.task_catalog_id = 3
  task.save!
end
