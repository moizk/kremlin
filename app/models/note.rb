class Note < ActiveRecord::Base
  attr_accessible :ip_address, :title, :url, :user_agent, :user_id, :note_category_id, :thought
  belongs_to :user
  belongs_to :note_category
end
