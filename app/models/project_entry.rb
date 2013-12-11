class ProjectEntry < ActiveRecord::Base
  attr_accessible :comment, :finish, :project_id, :start

  belongs_to :project

  def duration
    ((finish - start)/1.minute).round
  end

end
