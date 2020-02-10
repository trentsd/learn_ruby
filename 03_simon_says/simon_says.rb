def echo(word)
    return "#{word}"
end

def shout(word)
    return "#{word}".upcase
end

def repeat(word, num_repeats = 2)
    string = "#{word} " * num_repeats
    return string.chomp(' ')
end

def start_of_word(word, range)
    return word[0..range-1]
end

def first_word(sentence)
    words = sentence.split
    return words[0]
end

def titleize(sentence)
    words = sentence.split
    x = 0
    while x < words.length
        if x == 0
            words[x] = words[x].capitalize
        else
            if (words[x].downcase != "and" && words[x].downcase != "of" && words[x].downcase != "the" && words[x].downcase != "over")
                words[x] = words[x].capitalize
            end
        end
        x += 1
    end

    return words * " "

end