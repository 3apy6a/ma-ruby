require './config/initializers/database'

Dir['./app/models/*.rb'].each { |f| require f.gsub('.rb', '') }
Dir['./lib/handlers/*.rb'].each { |f| require f.gsub('.rb', '') }
