# The replace_char_at!(str, char, idx) method accepts a string, character, and an index as arguments. 
# The method mutates the str by replacing the given idx of the str with the char. The method returns the str.
# 
# Note: this method MUTATES the input str. This means that the object_id of the input string will be identical
# to the object_id of the returned string.

def replace_char_at!(str, char, idx)
    str[idx] == char
    str
end


str_1 = "hello"
p str_1.object_id                       # => 60
result_1 = replace_char_at!(str_1, "j", 0)
p result_1                              # => "jello"
p result_1.object_id                    # => 60


str_2 = "world"
p str_2.object_id                       # => 80
result_2 = replace_char_at!(str_2, "!", 2) 
p result_2                              # => "wo!ld"
p result_2.object_id                    # => 80
