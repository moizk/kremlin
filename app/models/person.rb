class Person < ActiveRecord::Base
  attr_accessible :email, :facebook, :first_name, :last_name, :linkedin, :phone, :school_id, :title, :twitter
  belongs_to :school

  def full_name
  	first_name + last_name
  end
end
