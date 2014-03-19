class ProjectEntry < ActiveRecord::Base
  belongs_to :project

  def duration
    ((finish - start)/1.minute).round
  end

end
