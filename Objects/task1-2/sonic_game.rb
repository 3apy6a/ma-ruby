require_relative 'initializer'

class SonicGame
  include HelpersModule

  attr_accessor :background_color, :enemies, :player_speed, :level_number

  def initialize(background_color, count_of_enemies, player_speed, level_number)
    self.background_color = background_color
    self.enemies = count_of_enemies
    self.player_speed = player_speed
    self.level_number = level_number
  end
end

uno = SonicGame.new('red', 1, 20, 1)
p uno.show_player_speed
