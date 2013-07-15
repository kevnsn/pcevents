# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :string(255)
#  email           :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  password_digest :string(255)
#

class User < ActiveRecord::Base
  before_save { self.email = email.downcase }
  attr_accessible :email, :name, :password, :password_confirmation
  validates :name, presence: true,  length: { minimum:4, maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { minimum:4, maximum: 50 }, format: { with: VALID_EMAIL_REGEX },  uniqueness: { case_sensitive: false }
  has_secure_password
  validates :password, length: { minimum: 6 }
end