class User < ApplicationRecord
  
  has_one_attached :profile
  has_many :appointments, dependent: :destroy
  has_many :barbers, dependent: :destroy 
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable



       
end
