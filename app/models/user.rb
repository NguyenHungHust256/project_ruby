class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :name, presence: true,
            length: {maximum: Settings.user_valid.max_length_name}
  validates :username, presence: true,
           length: {maximum: Settings.user_valid.max_length_user_name}
  validates :password, presence: true,
           length: {minimum: Settings.user_valid.min_passwd}

end
