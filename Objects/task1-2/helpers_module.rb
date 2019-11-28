# frozen_string_literal: true
module HelpersModule

  def change_level(new_level_number)
    self.level_number = new_level_number
  end

  def change_background(new_background_color)
    self.background_color = new_background_color
  end

  def change_speed_enemies(new_speed_enemies)
    self.speed_enemies = new_speed_enemies
  end

  def change_counf_of_enemies(new_count_of_enemies)
    self.count_of_enemies = new_count_of_enemies
  end

  def change_player_speed(new_player_speed)
    self.player_speed = new_player_speed
  end

  def show_count_of_enemies
    "Count of enemies on level is: #{@enemies}"
  end

  def show_level
    "You on level : #{@level_number}"
  end

  def show_background_color
    "Color of beckground is: #{@background_color}"
  end

  def show_speed_of_enemies
    "Speed of enemies is: #{@speed_enemies}"
  end
  def show_player_speed
    "Your speed : #{@player_speed} km/h"
  end
end
