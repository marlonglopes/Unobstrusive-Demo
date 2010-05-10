class Task < ActiveRecord::Base
  attr_accessible :name, :description, :due_date, :finished
end
