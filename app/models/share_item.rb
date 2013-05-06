class ShareItem < ActiveRecord::Base
  attr_accessible :description, :key, :name
  
  belongs_to :user
end
