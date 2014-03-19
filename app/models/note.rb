class Note < ActiveRecord::Base
  belongs_to :user
  belongs_to :note_category
end
