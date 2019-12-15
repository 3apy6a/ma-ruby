# frozen_string_literal: true
require './config/initializers/initializer'
sup_1 = Sup.new(
        model: 'Red Paddle Voyager 13,2"',
    length: '13,2"',
    preview_url: 'https://www.inflatableboarder.com/wp-content/uploads/2019/08/red-paddle-co-13-2-voyager.jpg',
    user_quantity: 1,
    description: 'Oneuser SUP, lenth -13,2 for touring'
  )


puts "Sup: #{sup_1.id}"
puts sup_1.save ? 'Saved' : 'something went wrong'
puts "Sup: #{sup_1.full_model}"