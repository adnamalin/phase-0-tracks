
# STANDALONE MODULE
  # module Shout
  #   def self.yell_angrily(words)
  #     words + "!!!" + " :("
  #   end
  #   def self.yell_happily(words)
  #     words + "!!!" + " :)"
  #   end
  # end
  # p Shout.yell_angrily("arg")
  # p Shout.yell_happily("yay")

#Mixin Module
module Shout
  def yell_angrily(words)
    puts words + "!!!" + " :("
  end
  def yell_happily(words)
    puts words + "!!!" + " :)"
  end
end

class Umpire
  include Shout
end

class Kid
  include Shout
end

umpire = Umpire.new
umpire.yell_angrily("out")

kid = Kid.new
kid.yell_happily("ice cream")
