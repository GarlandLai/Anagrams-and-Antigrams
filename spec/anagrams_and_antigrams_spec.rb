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
  it("if words are antigrams") do
    check = AnagramAndAntigrams.new('hi','bye')
    expect(check.check_words()).to(eq('The words are antigrams since no letters match!'))
  end
  it("if words are not anagrams and antigrams") do
    check = AnagramAndAntigrams.new('hey','bye')
    expect(check.check_words()).to(eq('The words are not anagrams or antigrams.'))
  end
  it("if it will work on multiple input with multiple words") do
    check = AnagramAndAntigrams.new('test words','wordtests')
    expect(check.check_words()).to(eq('These words are anagrams!'))
  end
  it("if it works with multiple spaces and words") do
    check = AnagramAndAntigrams.new('Multiple words','Simple Lord wut')
    expect(check.check_words()).to(eq('These words are anagrams!'))
  end
  it("if antigrams still works with multiple words") do
    check = AnagramAndAntigrams.new('see you','pit tilt')
    expect(check.check_words()).to(eq('The words are antigrams since no letters match!'))
  end
end
