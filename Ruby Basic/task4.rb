puts 'input boolean true or false:'

input_value = gets.chomp.downcase

boolean_keywords = ["true", "false"]

abort('You need enter true/false keyword.') unless boolean_keywords.include? input_value

input_value.include?("true") ? input_value = true : input_value = false

puts "input class is: #{input_value.class}"

input_value_int = input_value ? 1 : 0

puts "convert boolean: #{p input_value} to integer: #{input_value_int}"

puts "Size of integer type  #{input_value_int.size} bite"

input_value = input_value.to_s

puts "Size of string tipe: #{input_value.bytesize} bite"
