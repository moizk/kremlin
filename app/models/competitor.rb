class Competitor < ActiveRecord::Base
  attr_accessible :facebook, :name, :twitter, :website

  has_many :schools
end
