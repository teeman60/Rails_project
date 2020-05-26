class Restaurant < ApplicationRecord
    has_many :reviews
    has_many :users, through: :reviews
    has_many :foods
    has_one :location

    # validates :rating, numericality: {only_integer: true, greater_than: 0, less_than: 10}
end
