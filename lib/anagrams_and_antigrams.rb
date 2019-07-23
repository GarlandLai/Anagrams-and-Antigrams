require ('pry')

class AnagramAndAntigrams
  attr_reader(:word1,:word2)
  def initialize(word1, word2)
    @word1 = word1.downcase.split("").sort.reject{|i| i == (" ")}
    @word2 = word2.downcase.split("").sort.reject{|i| i == (" ")}
    @vowels = ['a','e','i','o','u','y']
  end
  def check_words
    if @word1.any?{|i| @vowels.include? i} && @word2.any?{|i| @vowels.include? i}
      if @word1 == @word2
        "These words are anagrams!"
      elsif @word1.any?{|i| @word2.include? i} == false
        'The words are antigrams since no letters match!'
      elsif @word1.any?{|i| @word2.include? i} == true
        'The words are not anagrams or antigrams.'
      end
    else
      'You need to input actual words!'
    end
  end
end
