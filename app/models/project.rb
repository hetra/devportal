class Project < ActiveRecord::Base
  has_many :devfiles
  has_many :devdirectories
  
  belongs_to :user
end
