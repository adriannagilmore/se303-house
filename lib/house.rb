class House
    def recite
        (1..12).map { |lineNum| line(lineNum) }.join("\n")
    end

    def phrase(lineNum)
        case lineNum
        when 1
            ""
        when 2
            "malt that lay in the "
        when 3
            "rat that ate the malt that lay in the "
        when 4
            "cat that killed the rat that ate the malt that lay in the "
        when 5
            "dog that worried the cat that killed the rat that ate the malt that lay in the "
        when 6
            "cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the "
        when 7
            "maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the "
        when 8
            "man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the "
        when 9
            "priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the "
        when 10
            "rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the "
        when 11
            "farmer sowing his corn that kept the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the "
        when 12
            "horse and the hound and the horn that belonged to the farmer sowing his corn that kept the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the "
        end
        
    end

    def line(lineNum)
        "This is the #{phrase(lineNum)}house that Jack built.\n" 
    end
end