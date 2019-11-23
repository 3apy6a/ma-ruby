require_relative 'initializer'

class MarioGame
  include HelpersModule

  @@count = 0

  attr_accessor :background_color, :count_of_enemies, :speed_enemies

  def initialize(background_color, count_of_enemies, speed_enemies)
    self.background_color = background_color
    self.count_of_enemies = count_of_enemies
    self.speed_enemies = speed_enemies
    @@count += 1
    show_final_screen if @@count == 20
  end

  def self.show_level
    "You on level : #{@@count}"
  end

  private

  def show_final_screen
    file = File.open('congrats.txt', 'r') do |text|
      text.each_line { |line| print line }
    end
    file.close
  end
end

level_1 = MarioGame.new('green', 2, 'veryslow')
level_2 = MarioGame.new('green', 3, 'veryslow')
level_3 = MarioGame.new('green', 4, 'veryslow')
level_4 = MarioGame.new('green', 5, 'veryslow')
level_5 = MarioGame.new('green', 6, 'veryslow')
level_6 = MarioGame.new('blue', 7, 'slow')
level_7 = MarioGame.new('blue', 8, 'slow')
level_8 = MarioGame.new('blue', 9, 'slow')
level_9 = MarioGame.new('blue', 10, 'slow')
level_10 = MarioGame.new('blue', 12, 'slow')
level_11 = MarioGame.new('orange', 15, 'fast')
level_12 = MarioGame.new('orange', 18, 'fast')
level_13 = MarioGame.new('orange', 19, 'fast')
level_14 = MarioGame.new('orange', 20, 'fast')
level_15 = MarioGame.new('orange', 22, 'veryfast')
level_16 = MarioGame.new('red', 24, 'veryfast')
level_17 = MarioGame.new('red', 26, 'veryfast')
level_18 = MarioGame.new('red', 28, 'veryfast')
level_19 = MarioGame.new('red', 30, 'veryfast')
level_20 = MarioGame.new('red', 33, 'fastest')

p level_19.show_count_of_enemies
p level_15.show_background_color
p level_11.show_speed_of_enemies
p MarioGame.show_level
