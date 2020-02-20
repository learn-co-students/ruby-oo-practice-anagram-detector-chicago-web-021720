class Anagram
    attr_reader :word

    def initialize(word)
        @word = word
    end

    def match(words_array)
        split_words_array = split_each_word_in_array(words_array)
        split_initial_word = split_word_into_array(self.word)
        anagrams_array = search_for_anagrams(split_initial_word, split_words_array)
        reset_split_words_to_strings(anagrams_array)
    end

    private

    def split_word_into_array(word)
        word.split("")
    end

    def split_each_word_in_array(words_array)
        words_array.map {|word| split_word_into_array(word)}
    end

    def search_for_anagrams(split_initial_word, split_words_array)
        split_words_array.select do |split_compare_word|
            is_anagram?(split_initial_word, split_compare_word) == true
        end
    end

    def is_anagram?(split_initial_word, split_compare_word)
        split_initial_word.sort == split_compare_word.sort
    end

    def reset_split_words_to_strings(anagrams_array)
        anagrams_array.map {|word| word.join}
    end
end