class Devfile < ActiveRecord::Base
  belongs_to :project
  belongs_to :devdirectory
end
