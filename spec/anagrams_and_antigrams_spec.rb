require ('rspec')
require ('anagrams_and_antigrams')

describe('#check_words') do

it("if word input is an anagram, let the user know") do
  check = AnagramAndAntigrams.new('eat','tea')
  expect(check.check_words()).to(eq('These words are anagrams!'))
  end

it("if test different cases") do
  check = AnagramAndAntigrams.new('tea','Eat')
  expect(check.check_words()).to(eq('These words are anagrams!'))
  end

end
