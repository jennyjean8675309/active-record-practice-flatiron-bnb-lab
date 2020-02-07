class Listing < ActiveRecord::Base
    belongs_to :host, :class_name => 'User'
    # belongs to user, as host
    belongs_to :neighborhood
    # belongs to neighborhood
    has_many :reservations
    # has many reservations
    has_many :guests, through: :reservations, :class_name => 'User'
    # has many users, as guests
    has_many :reviews, through: :reservations
    # has many reviews, through reservations

    # properties
    # has a title
    # has a description
    # has an address
    # has a listing type
    # has a price
end