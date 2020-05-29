class Review < ApplicationRecord
    belongs_to :user
    belongs_to :restaurant

    validates :date, presence: true
    validates :rating, numericality: {only_integer: true, greater_than: 0, less_than: 6}
    validates :user, uniqueness: {scope: :restaurant_id, message: "You can only make one restaurant review"}
    validates :comment, length: {minimum:3, maximum:300}
end
