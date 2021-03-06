class Influencer < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :industries
  has_and_belongs_to_many :campaigns 

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
