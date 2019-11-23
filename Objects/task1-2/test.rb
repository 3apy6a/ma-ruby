# require_relative 'helpers_module'

# # class B
# #   self.class.count = 0
# #   class << MarioGame.#    attr_accessorself.class.count
# #   end
# #   def initialize
# #     MarioGamself.class.count += 1
# #   end
  
# # end

# # one = B.new
# # two = B.new
# # p self.class.count

# # class Bob
# #  self.class.count = 0
  
# #   class << MarioGame.#     attr_readerself.class.count
# #   end
  
# #   def initialize
# #     Bob.instance_eval {self.class.count += 1 }
# #   end
# # end
  
# #   a = Bob.new
# #   b = Bob.new
# #   c = Bob.new
# #   puts Boself.class.count

# class MarioGame
  
#   self.class.count = 0
  
#   def initialize
#     self.class.count += 1
#     if self.class.count == 20
#       show_final_screen
#     end
#   end

#   def MarioGame.show_count
#     self.class.count
#   end

  
# end

# 10.times {MarioGame.new}
# 5.times {MarioGame.new}
# puts MarioGame.show_count

# stdin = gets.chomp
# p stdin

class Examp
  def self.obj_count
    count = 0
    ObjectSpace.each_object(self) do |b|
      count += 1
    end
 
    return count
  end
end
 
a = Examp.new
b = Examp.new
c = Examp.new
 
puts Examp.obj_count