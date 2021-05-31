class House
    attr_reader :line_start, :phrases

    def initialize(line_start = "This is", phrase_array = SubjectAndVerb.new.phrase_array)
        @line_start = line_start
        @phrases = phrase_array
    end

    def recite
        (1..12).map { |lineNum| line(lineNum) }.join("\n")
    end

    def line(lineNum)
      "#{line_start}#{phrases[lineNum]}.\n"
    end
end

class Pirate < House
  def initialize
    @line_start = "Thar be"
  end
end



# class RandomWithJackEnding < RandomVersion
#   def add_phrases(lineNum)
#     full_phrase = " the house that Jack built"
        
#     for i in 0..lineNum do
#         full_phrase = phrase[i] + full_phrase
#     end
        
#     full_phrase
#   end
# end

class SubjectAndVerb 
  def subject
    [
      "", 
    
      " the house",
    
      " the malt",
    
      " the rat",
    
      " the cat",
    
      " the dog",
    
      " the cow with the crumpled horn",
    
      " the maiden all forlorn",
    
      " the man all tattered and torn",
    
      " the priest all shaven and shorn",
    
      " the rooster that crowed in the morn",
    
      " the farmer sowing his corn",
    
      " the horse and the hound and the horn",
    ]
  end

  def verb
    [
      "", 
    
      " that Jack built",
    
      " that lay in",
    
      " that ate",
    
      " that killed",
    
      " that worried",
    
      " that tossed",

      " that milked",
    
      " that kissed",
    
      " that married",
    
      " that woke",
    
      " that kept",
    
      " that belonged to",
    ]
  end

  def full_phrase(lineNum)
    fullPhrase = ""
    
    for i in 0..lineNum do
      fullPhrase = subject[i] + verb[i] + fullPhrase
    end
    
    fullPhrase
  end

  def phrase_array
    new_array = []
    for i in 0..12 do
      new_array.append(full_phrase(i))
    end
    new_array
  end
end

class RandomSubjectAndVerb < SubjectAndVerb
  def subject
    [
    "", 
    
    " the house",
    
    " the malt",
    
    " the rat",
    
    " the cat",
    
    " the dog",
    
    " the cow with the crumpled horn",
    
    " the maiden all forlorn",
    
    " the man all tattered and torn",
    
    " the priest all shaven and shorn",
    
    " the rooster that crowed in the morn",
    
    " the farmer sowing his corn",
    
    " the horse and the hound and the horn",
    ].shuffle
  end

  def verb
    [
    "", 

    " that Jack built",

    " that lay in",

    " that ate",

    " that killed",

    " that worried",

    " that tossed",

    " that milked",

    " that kissed",

    " that married",

    " that woke",

    " that kept",

    " that belonged to",
    ].shuffle
  end

end


puts House.new("This is", RandomSubjectAndVerb.new.phrase_array).recite

#puts ""
#puts ""

