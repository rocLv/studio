json.id @task.id
json.hint Kramdown::Document.new(@task.hint || "").to_html
json.text Kramdown::Document.new(@task.text || "").to_html
json.subtext Kramdown::Document.new(@task.subtext || "").to_html
json.solution Kramdown::Document.new(@task.solution || "").to_html
json.next_task_link task_path(@next_task)
