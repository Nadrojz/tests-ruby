# Définition de la méthode translate qui prend comme attribut une phrase
# Cette méthode permet de passer chacun des mots de la phrase dans la méthode translate_word
def translate(sentence)
  array_word = sentence.split(" ")
  array_word.map! do |word|
    word = translate_word(word)
  end
  return array_word.join(" ")
end


# Définition de la méthode translate_word qui prend un mot comme attribut
# L'ordre dans lequel les if sont définis est primordial au passage du test
def translate_word(word)
  # Si le mot commence par une voyelle, on ajoute ay à la fin
  if word.match(/^[aeiou]/)
    add_ay(word)
  # Si le mot commence par 3 consonnes (inverses des voyelles) on ajoute les 3 premières lettres à la fin, on supprimes les 3 premières puis on ajoute ay
  elsif word.match(/^[^aeiou][^aeiou][^aeiou]/)
    3.times do
      add_ending(word)
      remove_char(word)
    end
    add_ay(word)
  # Si le mot commence par 2 consonnes (inverses des voyelles) on ajoute les 2 premières lettres à la fin, on supprimes les 2 premières puis on ajoute ay
  elsif word.match(/^[^aeiou][^aeiou]/)
    2.times do
      add_ending(word)
      remove_char(word)
    end
    add_ay(word)
  # Si le mot commence par une consonne (inverses des voyelles) on ajoute la première lettre à la fin, on supprimes la première puis on ajoute ay
  elsif word.match(/^[^aeiou]/)
    add_ending(word)
    remove_char(word)
    add_ay(word)
  end

end

# Définition de la méthode add_ending qui prend les x premières lettres d'un mot et les ajoute à la fin
def add_ending (word, index=0)
  word << word[index]
end

# Définition de la variable remove_char qui supprimme les x premières lettres d'un mot
def remove_char (word, index=0)
 word[index] = ""
end

# Définition de la variable add_ay qui ajoute la string ay à la fin d'un mot
def add_ay(word)
  word << "ay"
end
