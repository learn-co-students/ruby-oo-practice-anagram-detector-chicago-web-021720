# Your code goes here!
class Anagram
    attr_accessor :name, :anagram
    def initialize(name)
        @name=name
    end

    def match(array)
        name_array=name.split("")
        array_of_anagrams=[]
        solution=[]
        for i in array
            array_of_anagrams.push(i.split(""))
        end
        for i in array_of_anagrams
            if name_array.sort==i.sort
                 solution.push(array[array_of_anagrams.index(i)])
            end
        end
        solution
    end
end