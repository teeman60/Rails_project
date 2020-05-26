class Review < ApplicationRecord
    belongs_to :user
    belongs_to :restaurant

    validates :user, uniqueness: {scope: :restaurant_id}
    validates :date, presence :true
    validates :rating, numericality: {only_integer: true, greater_than: 0, less_than: 10}

end
