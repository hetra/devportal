class Stock < ActiveRecord::Base
  has_one :exchange
  belongs_to :portfolio
  belongs_to :user
end
