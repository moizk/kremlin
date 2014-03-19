class Project < ActiveRecord::Base

  has_many :project_entries
  belongs_to :user

   validates :git_repo, presence: true
   validates :name, presence: true
   validates :color, presence: true
   validates :website, presence: true

  def hourly_rate_in_minutes
    hourly / 60
  end
end
