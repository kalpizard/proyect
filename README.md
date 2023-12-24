#MODELO Y CONTROLLER DE USER

rails generate model User user_name:string user_email:string user_password:string

rails generate controller Users

#VALIDACIONES USER # app/models/user.rb

validates :user_name, presence: true, uniqueness: { case_sensitive: false }, length: { minimum: 3, maximum: 25}

VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

Validates :email, presence: true,
uniqueness: { case_sensitive: false}, length: { case_sensitive: false},
length: { maximum: 105}, format: { with: VALID_EMAIL_REGEX}

validates :user_password, presence: true, length: { minimum: 8 , maximum: 50}
validates_format_of :user_password, with: /\A(?=.*[a-zA-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]+\z/, message: 'debe incluir al menos una letra, un número y un carácter especial'

