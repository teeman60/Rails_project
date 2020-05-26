class User < ApplicationRecord
    has_many :reviews
    has_many :restaurants, through: :reviews

    has_secure_password

    validates :name, uniqueness: true
    validates :age, numericality: {only_integer: true, greater_than: 14}
    
end
