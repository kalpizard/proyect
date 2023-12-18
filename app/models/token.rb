class Token < ApplicationRecord
    #RELACIONES
    belongs_to :user
    #VALIDACIONES 
    validates :token, presence: true, uniqueness: true
    validates :expiration_day, presence: true
end
