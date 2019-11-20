class String
  def black
    "\e[30m#{self}\e[0m"
  end

  def red
    "\e[31m#{self}\e[0m"
  end

  def green
    "\e[32m#{self}\e[0m"
  end

  def brown
    "\e[33m#{self}\e[0m"
  end

  def blue
    "\e[34m#{self}\e[0m"
  end

  def magenta
    "\e[35m#{self}\e[0m"
  end

  def cyan
    "\e[36m#{self}\e[0m"
  end

  def gray
    "\e[37m#{self}\e[0m"
  end
end

color_palette = %w[black red green gray blue brown magenta cyan]

if ARGV.length != 2
  puts 'We need exactly 2 arguments: color, file!'
  exit
end

color, text_file = ARGV
puts "Going to open '#{text_file}'"

abort('You need enter colors from palette') unless color_palette.include? color

File.open(text_file) do |text|
  text.each_line do |line|
    print line.public_send(color)
  end
end
