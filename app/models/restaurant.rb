class Restaurant < ApplicationRecord
    has_many :reviews
    has_many :users, through: :reviews
    has_many :foods
    has_one :location

    def avg_rating
        sum = 0
        if reviews.length != 0
            self.reviews.each do |review|
                sum += review.rating
            end
            result = sum/self.reviews.length
        else
            result = 0
        end
        result
    end

    def most_recent
        self.reviews.last(3).map {|rev| rev.comment}
    end

end
