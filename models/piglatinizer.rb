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
        word[1..-1] + word[0] + "ay"
    end

end 