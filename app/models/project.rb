class Project < ActiveRecord::Base
  attr_accessible :color, :git_repo, :name, :user_id, :website, :hourly

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
