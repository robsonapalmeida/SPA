json.extract! employee, :id, :name, :birthday, :salary, :shift, :department, :hiredate, :nickname, :photo, :created_at, :updated_at
json.url employee_url(employee, format: :json)
