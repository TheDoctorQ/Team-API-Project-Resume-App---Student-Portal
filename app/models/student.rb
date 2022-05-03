class Student < ApplicationRecord
  has_one :experience
  has_one :education 
  has_one :capstone 
  has_many :skills
  has_secure_password
  validates :email, presence: true, uniqueness: true 
end
