class User < ActiveRecord::Base
  has_many :lists
  
  before_save { self.email = email.downcase if email.present? }
  
  validates :email, 
            presence: true,
            uniqueness: { case_sensitive: false },
            length: { minimum: 3, maximum: 250 }
  
  validates :password, presence: true, length: { minimum: 6 }, if: "password_digest.nil?"
  validates :password, length: { minimum: 6 }, allow_blank: true

  has_secure_password  
end


