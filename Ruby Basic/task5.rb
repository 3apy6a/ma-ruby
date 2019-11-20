filename = ARGV[0]
find_string = ARGV[1..-1].join(' ')
puts "Going to open '#{filename}'"

text = open filename
begin
  text.each.with_index(1) do |line, number_of_string|
    next unless line.include?(find_string)

    p "Number of the required line: #{number_of_string}"
    break
  end
ensure 
  text&.close
end
