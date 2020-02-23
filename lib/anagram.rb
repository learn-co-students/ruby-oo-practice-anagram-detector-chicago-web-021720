class Anagram
    attr_accessor :word

    def initialize(word)
        @word = word
    end

    def word_arr(word)
        # helper method for splitting a single word
        # into a sorted array
        word.split("").sort
    end

    def match(matches)
        target = word_arr(self.word)
        # we can compare each potential matching word
        # with the target by sorting them the same way
        matches.select do |match|
            word_arr(match) == target
        end
    end
end

edcba = Anagram.new("edcba")
#edcba.word_arr(edcba.word)
puts edcba.match(%w(adsdfsd abcde bcdea elf))