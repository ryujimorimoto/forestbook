class AdminUser < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable ,:omniauthable,:registerable,:recoverable, 
  devise :database_authenticatable, :rememberable, :trackable, :validatable
end
