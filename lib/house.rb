class House
    attr_reader :line_start

    def initialize(line_start = "This is")
        @line_start = line_start
    end

    def phrase
    [
        "", 

        " the house that Jack built",
  
        " the malt that lay in",
  
        " the rat that ate",
  
        " the cat that killed",
  
        " the dog that worried",
  
        " the cow with the crumpled horn that tossed",
  
        " the maiden all forlorn that milked",
  
        " the man all tattered and torn that kissed",
  
        " the priest all shaven and shorn that married",
  
        " the rooster that crowed in the morn that woke",
  
        " the farmer sowing his corn that kept",
  
        " the horse and the hound and the horn that belonged to"
    ]
    end

    def recite
        (1..phrase.length-1).map { |lineNum| line(lineNum) }.join("\n")
    end

    def add_phrases(lineNum)
      full_phrase = ""
      
      for i in 1..lineNum do
        full_phrase = phrase[i] + full_phrase
      end
      
      full_phrase
    end

    def line(lineNum)
      "#{line_start}#{add_phrases(lineNum)}.\n"
    end
end

class Pirate < House
  def initialize
    @line_start = "Thar be"
  end
end

class RandomVersion < House
  def phrase
    [
      "", 

      " the house that Jack built",

      " the malt that lay in",

      " the rat that ate",

      " the cat that killed",

      " the dog that worried",

      " the cow with the crumpled horn that tossed",

      " the maiden all forlorn that milked",

      " the man all tattered and torn that kissed",

      " the priest all shaven and shorn that married",

      " the rooster that crowed in the morn that woke",

      " the farmer sowing his corn that kept",

      " the horse and the hound and the horn that belonged to",
    ].shuffle
  end
end

class RandomWithJackEnding < RandomVersion
  def add_phrases(lineNum)
    full_phrase = " the house that Jack built"
        
    for i in 0..lineNum do
        full_phrase = phrase[i] + full_phrase
    end
        
    full_phrase
  end
end

puts RandomVersion.new.recite

puts ""
puts ""

puts RandomVersion.new("Thar be").recite

puts ""
puts ""

puts RandomWithJackEnding.new("Thar be").recite