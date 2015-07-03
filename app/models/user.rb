class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
  has_many :projects
  has_many :stocks
  has_many :portfolios
  has_many :exchanges
  has_many :devfiles
  has_many :devdirectories
end
