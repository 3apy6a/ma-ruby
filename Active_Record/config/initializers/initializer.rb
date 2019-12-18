require './config/initializers/database'

Dir['./app/models/*.rb'].each { |f| require f.gsub('.rb', '') }
#require './app/models/customer'
#require './app/models/sup'
#require './app/models/booking'
#require './app/models/bookings_gear'
#require './app/models/gear'