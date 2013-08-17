class Project < ActiveRecord::Base
  attr_accessible :color, :git_repo, :name, :user_id, :website

  has_many :project_entries

   validates :git_repo, presence: true
   validates :name, presence: true
   validates :color, presence: true
   validates :website, presence: true
end
