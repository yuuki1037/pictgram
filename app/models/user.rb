class User < ApplicationRecord
  validates :name, presence: true
  validates :name, length: { maximum: 15 }
  validates :email, presence: true
  MA_REGEX = /[a-zA-Z0-9._+]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*/
  validates :email, presence: true, format: {with: MA_REGEX }
   has_secure_password
   validates :password,length: { in: 8..32 }
PW_REGEX = /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]{8,32}\z/i
  validates :password, presence: true, format: { with: PW_REGEX }

end
