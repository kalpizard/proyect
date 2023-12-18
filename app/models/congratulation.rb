class Congratulation < ApplicationRecord
    #RELACIONES
    has_and_belongs_to_many :users
    
    #VALIDACIONES
    validates :congrat_decript, presence: true
    validates :congrat_time, presence: true
end
