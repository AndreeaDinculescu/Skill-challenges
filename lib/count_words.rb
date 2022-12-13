def count_words(string)
words = string.split(" ")
if words.length <= 5
    return string
else
    return words[0,5].join(" ") + "..."
end
end