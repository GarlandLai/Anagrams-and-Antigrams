require ('rspec')
require ('anagrams_and_antigrams')

describe("#check_words") do

it("if word input is an anagram, let the user know") do
  expect(check_words("eat","tea")).to(eq("These words are anagrams!"))
  end

end
