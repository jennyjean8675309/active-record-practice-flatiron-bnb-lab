class City < ActiveRecord::Base
    has_many :neighborhoods
    # has many neighborhoods
    has_many :listings, through: :neighborhoods
    # has many listings through neighborhoods

    # properties
    # has a name
end