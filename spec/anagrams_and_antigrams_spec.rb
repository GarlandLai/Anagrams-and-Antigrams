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

it("if words entered is an actual word") do
  check = AnagramAndAntigrams.new('thrt','hrtt')
  expect(check.check_words()).to(eq('You need to input actual words!'))
end

it("if words are an antigram") do
  check = AnagramAndAntigrams.new('hi','bye')
  expect(check.check_words()).to(eq('The words are antigrams since no letters match!'))
end


end
