class PigLatinizer

  def piglatinize(string)
    a = string.split(" ")
    b = a.map {|word| piglatinize_word(word)}
    b.join(" ")
  end

  def piglatinize_word(word)
    
      if word[0].downcase.start_with?(/[aeiou]/)
        "#{word}way"
      else
        consonants = []
        consonants << word[0]
      if ["a", "e", "i", "o", "u"].include?(word[1]) == false
        consonants << word[1]
                    if ["a", "e", "i", "o", "u"].include?(word[2]) == false
                        consonants << word[2]
                    end
                end
            "#{word[consonants.length..-1] + consonants.join + "ay"}"
            end
    end

end 