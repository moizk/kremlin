class School < ActiveRecord::Base
  attr_accessible :budget, :competitor_id, :facebook, :latitude, :longitude, :name, :newspaper, :private, :saf, :sga_facebook, :sga_twitter, :sga_website, :students, :twitter, :website, :wiki, :customer, :anchor_school
  belongs_to :competitor
  has_many :people
end
