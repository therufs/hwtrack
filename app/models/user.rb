class User < ActiveRecord::Base

  before_save { self.email = email.downcase }
  before_create :create_remember_token

  has_many :assignments, dependent: :destroy

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

  def self.new_remember_token ## why is it supposed to be User.whatever?
    SecureRandom.urlsafe_base64
  end

  def self.digest(token)
    Digest::SHA1.hexdigest(token.to_s)
  end

  def self.late?
    if due_date < Date.today
      "late"
    end
  end

  private

    def create_remember_token
      self.remember_token = User.digest(User.new_remember_token)
    end

end
