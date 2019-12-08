require './config/initializers/initializers'


sup_1 = Sup.new(
    model: "Gladiator 10,6",
    avatar_url: "https://sup_photo.com",
    user_quantity: 1,
    desc: "Oneuser SUP lenth -10,6"
)
puts "Sup: #{sup_1.id}"

if sup_1.save
  puts 'Saved'
else
  puts "something went wrong"
end

puts"Sup: #{sup_1.full_model}"