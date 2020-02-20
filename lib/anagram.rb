class Anagram

    attr_accessor :match
    attr_reader :word

    def initialize(word)
        @word = word
    end

    def match(array)
        array.find_all { |w| w.chars.sort == @word.chars.sort }
    end

end