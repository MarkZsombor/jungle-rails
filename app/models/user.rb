class User < ActiveRecord::Base

  has_secure_password
  has_many :reviews
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, :uniqueness => {:case_sensitive => false}
  validates :password, length: { minimum: 8 }
  validates :password_confirmation, presence: true

  def authenticate_with_credentials(email, password)
    @authenticated_user = User.where("email = ?", email).first
    if @authenticated_user.authenticate(password)
      @authenticated_user
    else
      nil
    end
  end

end
