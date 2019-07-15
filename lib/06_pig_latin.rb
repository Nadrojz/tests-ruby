# def translate(s)
#   if s.start_with?('a','e','i','o','u')
#   if s.match(/^[aeiou]/)
#     s = s + "ay"
#   elsif s[0..0] =~ /[^aeiou]/ && s[1..1] =~ /[aeiou]/
#   elsif s.match(/^[^aeiou]/) && s[1..1] =~ /[aeiou]/
#     a = s[0..0]
#     a = s.delete(a) + a + "ay"
#   elsif s[0..1] =~ /[^aeiou]/
#     a = s[0..1]
#     s = s.delete(a) + a + "ay"
#   elsif s.split.size == 2
#     s = s.split
#     a = s.split[0]
#     b = s[1]
#     s = a + "ay"
#   end
# end
def translate(sentence)
  array_word = sentence.split(" ")
  array_word.map! do |word|
    word = translate_word(word)
  end
  return array_word.join(" ")
end


def translate_word(word)
  if word.match(/^[aeiou]/)
    add_ay(word)
  elsif word.match(/^[^aeiou][^aeiou][^aeiou]/)
    3.times do
      add_ending(word)
      remove_char(word)
    end
    add_ay(word)
  elsif word.match(/^[^aeiou][^aeiou]/)
    2.times do
      add_ending(word)
      remove_char(word)
    end
    add_ay(word)
  elsif word.match(/^[^aeiou]/)
    add_ending(word)
    remove_char(word)
    add_ay(word)
  end
end


def add_ending (word, index=0)
  word << word[index]
end

def remove_char (word, index=0)
 word[index] = ""
end

def add_ay(word)
  word << "ay"
end






# def add_ending(message,index=0)
#   message << message[index]
# end
#
# def remove(message,index=0)
#   message[index] = ""
# end
