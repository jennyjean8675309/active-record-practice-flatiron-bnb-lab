require_relative '../config/environment.rb'

# Cities (have a name)
seattle = City.find_or_create_by!(name: "Seattle, WA")
dc = City.find_or_create_by(name: "Washington, DC")
paris = City.find_or_create_by(name: "Paris, France")

# Neighborhoods (have a city and a name)
ann = Neighborhood.find_or_create_by(city: seattle, name: "Queen Anne")
pike = Neighborhood.find_or_create_by(city: seattle, name: "Pike's Place")
dupont = Neighborhood.find_or_create_by(city: dc, name: "Dupont")
capitol = Neighborhood.find_or_create_by(city: dc, name: "Capitol Hill")
champs = Neighborhood.find_or_create_by(city: paris, name: "Champs Elysees")
sorbonne = Neighborhood.find_or_create_by(city: paris, name: "Sorbonne")

# Users (have a name)
jenny = User.find_or_create_by(name: "Jenny Penny")
lucy = User.find_or_create_by(name: "Lucy Goosey")
oscar = User.find_or_create_by(name: "Oscar Boscar")

# Listings (have a host, a neighborhood, title, description, address, listing_type, and price)
l1 = Listing.find_or_create_by(host: jenny, neighborhood: capitol, title: "Capital Comfort", description: "Get cozy in this tiny little apartment in the heart of the nation's capitol.", address: "1600 Pennsylvania Ave.", listing_type: "private apartment", price: 300)
l2 = Listing.find_or_create_by(host: lucy, neighborhood: sorbonne, title: "Oui, c'est gratis!", description: "Snuggle down between the dumpsters in the alleyway and watch the world go by!", address: "15 Rue Alleyway", listing_type: "alleyway", price: 0)
l3 = Listing.find_or_create_by(host: lucy, neighborhood: pike, title: "Rainy Refuge", description: "Walk to Pike Place Market!", address: "500 Pike St.", listing_type: "townhouse", price: 500)

# Reservations (have a guest, a listing, checkin, and checkout)
r1 = Reservation.find_or_create_by(guest: jenny, listing: l2, checkin: Time.new(2020, 2, 2), checkout: Time.new(2020, 2, 3))
r2 = Reservation.find_or_create_by(guest: oscar, listing: l2, checkin: Time.new(2020, 2, 3), checkout: Time.new(2020, 2, 4))
r3 = Reservation.find_or_create_by(guest: lucy, listing: l1, checkin: Time.new(2020, 1, 1), checkout: Time.new(2020, 1, 4))
r4 = Reservation.find_or_create_by(guest: oscar, listing: l3, checkin: Time.new(2020, 2, 1), checkout: Time.new(2020, 2, 8))

# Reviews (have a guest, have a reservation, have a description, have a rating)
Review.find_or_create_by(guest: oscar, reservation: r2, description: "It was great! You even get a cardboard box to keep you warm!", rating: 5)
Review.find_or_create_by(guest: jenny, reservation: r1, description: "Never. Again.", rating: 0)
Review.find_or_create_by(guest: lucy, reservation: r3, description: "Awesome!", rating: 4)
Review.find_or_create_by(guest: oscar, reservation: r4, description: "Too expensive by far.", rating: 2)