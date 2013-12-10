class NoteCategory < ActiveRecord::Base
  attr_accessible :cover, :name, :user_id
  belongs_to :user
  has_many :notes
end
