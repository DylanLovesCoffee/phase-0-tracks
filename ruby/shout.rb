# module Shout
#
#   def self.yell_angrily(words)
#     words + "!!!" + ":("
#   end
#
#   def self.yelling_happily(words)
#     words.upcase + "!!!!" + ":)"
#   end
#
# end
#
# p Shout.yell_angrily("I'm feeling so exhausted")
# p Shout.yelling_happily("Water is great")

module Shout

  def roar(words)
    puts words.upcase + "!!"
  end

  def magic_words
    puts "You shall not pass!"
    puts "*hits ground with staff*"
  end

end


class Wizard
  include Shout
end

class Demon
  include Shout
end

gandalf = Wizard.new
gandalf.magic_words

balrog = Demon.new
balrog.roar("Hey, get over here")
