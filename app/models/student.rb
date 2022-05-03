class Student < ApplicationRecord
  has_one :experience
  has_one :education 
end
