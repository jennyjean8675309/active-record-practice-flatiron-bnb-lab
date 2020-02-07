class Reservation < ActiveRecord::Base
    belongs_to :guest, :class_name => 'User'
    # belongs to user, as guest
    belongs_to :listing
    # belongs to listing
    has_many :reviews
    # has many reviews

    # properties
    # has a checkin time
    # has a checkout time
end