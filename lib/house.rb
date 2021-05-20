class House
    attr_reader :line_start, :pieces

    def initialize(line_start = "This is")
        @line_start = line_start
        @pieces = [
            "", "",

            "malt that lay in the ",
 
            "rat that ate the malt that lay in the ",

            "cat that killed the rat that ate the malt that lay in the ",

            "dog that worried the cat that killed the rat that ate the malt that lay in the ",

            "cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the ",

            "maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the ",
 
            "man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the ",

            "priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the ",

            "rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the ",
 
            "farmer sowing his corn that kept the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the ",

            "horse and the hound and the horn that belonged to the farmer sowing his corn that kept the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the ",
        ]
    end

    def recite
        (1..pieces.length-1).map { |lineNum| line(lineNum) }.join("\n")
    end

    def line(lineNum)
        "#{line_start} the #{pieces[lineNum]}house that Jack built.\n" 
    end

end

class Pirate < House
  def initialize
    @line_start = "Thar be"
  end
end