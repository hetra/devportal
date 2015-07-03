class Devfile < ActiveRecord::Base
  belongs_to :project
  belongs_to :devdirectory
  belongs_to :user
end
