class Review < ActiveRecord::Base
    belongs_to :guest, :class_name => 'User'
    # belongs to user, as guest
    belongs_to :reservation
    # belongs to reservation

    # properties
    # has a description
    # has a rating
end