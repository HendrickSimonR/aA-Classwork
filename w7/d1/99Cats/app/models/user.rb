# == Schema Information
#
# Table name: users
#
#  id              :bigint           not null, primary key
#  username        :string           not null
#  password_digest :string           not null
#  session_token   :string           not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
class User < ApplicationRecord
  validates :username, presence: true, uniqueness: true 
  validates :password, length: { minimum: 6, allow_nil: true }
  validates :password_digest, presence: true 
  validates :session_token, presence: true, uniqueness: true 
  
  after_initialize :ensure_session_token
  
  def self.find_by_credentials(username, password)
    user = User.find_by(username: username)
    
    if user && user.is_valid_password?(password)
      return user
    else
      nil
    end 
  end
  
  def password=(pw)
    self.password_digest = BCrypt::Password.create(pw)
    @password = pw
  end
  
  def is_valid_password?(pw)
    BCrypt::Password.new(self.password_digest).is_password?(pw)
  end
  
  def reset_session_token!
    self.session_token = SecureRandom::urlsafe_base64
    self.save!
    self.session_token
  end

  private

  def ensure_session_token
    self.session_token ||= SecureRandom.urlsafe_base64
  end 
end
