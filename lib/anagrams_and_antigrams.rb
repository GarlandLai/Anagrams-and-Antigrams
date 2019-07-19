require ('pry')

class AnagramAndAntigrams

  attr_reader(:word1,:word2)

  def initialize(word1, word2)
    @@word1 = word1.downcase
    @@word2 = word2.downcase
  end

  def check_words
    @@word1 = @@word1.split("").sort
    @@word2 = @@word2.split("").sort

    if @@word1.any?('a') == true || @@word1.any?('i') == true || @@word1.any?('e') == true || @@word1.any?('o') == true || @@word1.any?('u') == true || @@word1.any?('y') == true && @@word2.any?('a') == true || @@word2.any?('i') == true || @@word2.any?('e') == true || @@word2.any?('o') == true || @@word2.any?('u') == true || @@word2.any?('y') == true
      if @@word1 == @@word2
        p "These words are anagrams!"
      end
    else
      p 'You need to input actual words!'
    end

  end
end

puts "Enter in a word:"
word1 = gets.chomp
puts "Enter another word:"
word2 = gets.chomp
check = AnagramAndAntigrams.new(word1,word2)
p check.check_words
