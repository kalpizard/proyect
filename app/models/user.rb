class User < ApplicationRecord
    #RELACIONES
    has_many :tokens
    has_and_belongs_to_many :congratulations
    #VALIDACIONES
    validates :nombre, :email, presence: true
    validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
end
