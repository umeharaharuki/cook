class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  with_options presence: true do
    validates :nickname
    validates :profile
    validates :country_id
  end
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
