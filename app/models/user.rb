class User < ActiveRecord::Base
  attr_accessible :email, :name, :cpf, :gender, :city, :state, :birthdate, :password, :password_confirmation
  has_secure_password

  before_save { |user| user.email = user.email.downcase }

  validates :name, presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  VALID_CPF_REGEX = /^\d{3}\.\d{3}\.\d{3}\-\d{2}$/
  validates :cpf, presence: true, format: { with: VALID_CPF_REGEX }

  validates :password, length: { minimum: 6 }
  validates :password_confirmation, presence: true
end