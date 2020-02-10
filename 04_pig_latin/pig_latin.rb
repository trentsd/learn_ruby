def translate(sentence)
    words = sentence.split
    x = 0
    while x < words.length
        words[x] = translate_word(words[x])
        x += 1
    end
    return words * " "
end

def begin_consonant?(word)
    first = word[0]
    return (first != 'a' && first != 'e' && first != 'i' && first != 'o' && first != 'u')
end

def translate_word(word)
    while begin_consonant?(word)
        word[word.length] = word[0]
        word[0] = ""
        if (word[0] == "u")
            if (word[word.length-1] == "q")
                word[word.length] = word[0]
                word[0] = ""
            end
        end
    end
    word << "ay"
    return word
end