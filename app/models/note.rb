class Note < ActiveRecord::Base
  attr_accessible :ip_address, :title, :url, :user_agent, :user_id
end
