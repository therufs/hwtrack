class User < ActiveRecord::Base

  before_save { self.email = email.downcase }

  has_many :assignments

  validates :name, presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }

  validates :password, length: { minimum: 6 }

  def completed?(a)
    assignment = Assignment.find_by(user_id: id, class_assignment_id: a.id)
    assignment.complete
  end

  has_secure_password

end
