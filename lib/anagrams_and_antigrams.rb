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

    if @@word1.any?{|letter| ['a','e','i','o','u','y'].include?letter} && @@word2.any?{|letter| ['a','e','i','o','u','y'].include?letter}
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
