class User < ApplicationRecord
    has_many :reviews
    has_many :restaurants, through: :reviews

    has_secure_password

    validates :name, uniqueness: true
    validates :name, length: { minimum: 3 }
    validates :age, numericality: {only_integer: true, greater_than: 14, less_than: 130}

    def most_like
        if self.reviews.length != 0
        result = self.reviews.max{ |a,b| a.rating <=> b.rating }
        update = result.restaurant.name
        end
        update
    end    
end
