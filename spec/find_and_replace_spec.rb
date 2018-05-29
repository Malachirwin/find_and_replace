require "rspec"
require "find_and_replace"

describe('find_and_replace') do
  it('finds a word and reolaces it with another word') do
    expect("Hello world".find_all_and_replace("world", "universe")).to eq("Hello universe")
  end
  it('finds all of the same word and reolaces it with another word') do
    expect("I am walking my cat to the cathedral".find_all_and_replace("cat", "dog")).to eq("I am walking my dog to the doghedral")
  end
  it('should handle this case too') do
    expect('hello world hello hello'.find_all_and_replace('hello', 'dog')).to eq('dog world dog dog')
  end
  it('should handle this really hard case too') do
    expect('hello world hello hello hello hello'.find_all_and_replace('hello', 'dog')).to eq('dog world dog dog dog dog')
  end
end
