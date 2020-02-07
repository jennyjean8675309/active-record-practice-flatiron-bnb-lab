class User < ActiveRecord::Base
    has_many :listings, :foreign_key => 'host_id'
    # has many listings, as host
    has_many :reservations, through: :listings, :foreign_key => 'host_id'
    # has many reservations, through their listings as host
    has_many :reviews, :foreign_key => 'guest_id'
    # has many reviews, as guest
    has_many :trips, :class_name => 'Reservation', :foreign_key => 'guest_id'
    # has many reservations (called trips), as guest
    # has_many :reservations, :foreign_key => 'guest_id' -- this doesn't work, because it overwrites the has_many :reservations through the host_id (from above) -- just as we aliased the user's foreign key, we can also alias the class name
    
    

    # properties
    # has a name
end