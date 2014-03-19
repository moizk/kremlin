class School < ActiveRecord::Base
  belongs_to :competitor
  has_many :people
end
