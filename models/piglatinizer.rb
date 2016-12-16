require 'pry'

class PigLatinizer



  def piglatinize(word)
    if vowels.include?(word[0].downcase) == true
         word + "way"
    elsif vowels.include?(word[0].downcase) == false
        letters = word.split("")
        pig_latin_no_ay = until_vowel(letters).join
        ay(pig_latin_no_ay)
    end
  end


  def until_vowel(letters)
    first_vowel = letters.find {|letter| vowels.include?(letter)}
    index_first_vowel = letters.index(first_vowel)
    first = letters[0..(index_first_vowel-1)]
    last = letters[index_first_vowel..-1]
    last+first
  end

  def alphabet
    alphabet = ('a'..'z').to_a
  end

  def vowels
    vowels = ["a", "e", "i", "o", "u"]
  end

  def consonants
    consonants = alphabet - vowels
  end

  def ay(split)
    split + "ay"
  end

  def to_pig_latin(sentence)
    sentence.split(" ").collect do |word|
      piglatinize(word)
    end.join(" ")
  end

end
