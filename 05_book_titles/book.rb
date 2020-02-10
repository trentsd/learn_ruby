class Book
    attr_accessor :title

    def title=(sentence)
        bad_words = ["and", "of", "the", "over", "in", "a", "an"]
        words = sentence.split
        x = 0
        while x < words.length
            if x == 0
                words[x] = words[x].capitalize
            else
                if (!bad_words.include?(words[x].downcase))
                    words[x] = words[x].capitalize
                end
            end
            x += 1
        end
        @title = words * " "
    end
end
