class Appointment < ApplicationRecord
    validates :phone, presence: true
    
end
