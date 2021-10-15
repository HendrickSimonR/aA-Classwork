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
  attr_reader :password 
  after_initialize :ensure_session_token

  validates :username, :session_token, uniqueness: true, presence: true 
  validates :password_digest, presence: true
  valdiates :password, length: { minimum: 6, allow_nil: true } 

  has_many :subs,
    foreign_key: :moderator_id,
    class_name: :Sub

  def self.find_by_credentials(username, password)
    user = User.find_by(username: username)
    return nil if user.nil?
    user.is_valid_password?(password) ? user : nil
  end 

  def password=(pw)
    @password = pw
    self.password_digest = BCrypt::Password.create(pw)
  end 

  def is_valid_password?(pw)
    BCrypt::Password.new(self.password_digest).is_password?(pw)
  end 

  def reset_session_token!
    self.session_token = SecureRandom::urlsafe_base64
    self.save!
    self.session_token 
  end 

  def ensure_session_token
    self.session_token ||= SecureRandom::urlsafe_base64
  end 
end
