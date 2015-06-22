class Devdirectory < ActiveRecord::Base
  has_many :devfiles
  belongs_to :project
end
