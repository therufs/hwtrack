class Student < User
  belongs_to :teacher
  has_many :assignments
end
