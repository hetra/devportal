class Devdirectory < ActiveRecord::Base
  has_many :devfiles
  has_many :devdirectories
  belongs_to :project
end
