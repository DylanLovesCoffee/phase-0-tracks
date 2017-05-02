module Shout

  def self.yell_angrily(words)
    words + "!!!" + ":("
  end

  def self.yelling_happily(words)
    words.upcase + "!!!!" + ":)"
  end

end

p Shout.yell_angrily("I'm feeling so exhausted")
p Shout.yelling_happily("Water is great")
