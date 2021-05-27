class House
    attr_reader :line_start

    def initialize(line_start = "This is")
        @line_start = line_start
    end

    def phrase
        [
            "", 

            " house that Jack built",

            " malt that lay in the",

            " rat that ate the",

            " cat that killed the",

            " dog that worried the",

            " cow with the crumpled horn that tossed the",

            " maiden all forlorn that milked the",

            " man all tattered and torn that kissed the",

            " priest all shaven and shorn that married the",

            " rooster that crowed in the morn that woke the",

            " farmer sowing his corn that kept the",

            " horse and the hound and the horn that belonged to the",
        ]
    end

    def recite
        (1..phrase.length-1).map { |lineNum| line(lineNum) }.join("\n")
    end

    def add_phrases(lineNum)
      full_phrase = ""
      
      for i in 0..lineNum do
        full_phrase = phrase[i] + full_phrase
      end
      
      full_phrase
    end

    def line(lineNum)
      "#{line_start} the#{add_phrases(lineNum)}.\n"
    end
end

class Pirate < House
  def initialize
    @line_start = "Thar be"
  end
end

class RandomVersion < House
  def line(lineNum)
    phrase.shuffle
    "#{line_start} the #{phrase[lineNum]}house that Jack built.\n"
  end
end

#puts RandomVersion.new("Thar be").recite