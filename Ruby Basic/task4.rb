puts 'input boolean true or false:'

input_value = gets.chomp.downcase

boolean_keywords = %w[true false]

abort('You need enter true/false keyword.') unless boolean_keywords.include? input_value

boolean_value = input_value == "true" ? true : false

puts "input class now is: #{boolean_value.class}"

input_value_int = boolean_value ? 1 : 0

puts "convert boolean: #{p boolean_value} to integer: #{input_value_int}"

puts "Size of integer type  #{input_value_int.size} bite"

input_value = input_value.to_s

puts "Size of string tipe: #{input_value.bytesize} bite"
