# Your code goes here!
require 'pry'
class Anagram
  attr_accessor :word
  def initialize(word)
    @word = word
  end
  def match(word_array)
    word_array.reduce([]) do |matches, word|
        matches << word unless word.split('').sort != self.word.split('').sort
        matches
    end
  end
end
