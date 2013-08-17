class ProjectEntry < ActiveRecord::Base
  attr_accessible :comment, :end, :project_id, :start

  belongs_to :project
end
