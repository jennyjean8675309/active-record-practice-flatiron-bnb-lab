class Neighborhood < ActiveRecord::Base
    belongs_to :city
    # belongs to a city
    has_many :listings
    # has many listings

    # properties
    # has a name
end