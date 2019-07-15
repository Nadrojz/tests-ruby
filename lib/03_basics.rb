#-----who is the biggest number-----
# Définition de la méthode who_is_bigger qui prend trois attributs et qui va vérifier lequel est le plus grand. Retourne nil si un nil fait partie des attributs
def who_is_bigger(a, b, c)
# Si l'un des trois attribut est égal à nil, retourne la string "nil detected"
    if a == nil || b == nil || c == nil
    return "nil detected"
    # Si aucun des attributs n'est égal à nil
    else
      # Définition de la variable numbers qui est égale aux trois attributs sous forme d'array
      numbers = [a, b, c]
      # Définition de la variable biggest qui va chercher la plus grande valeur de l'array numbers
      biggest = numbers.max
      # Si la plus grande valeur se trouve à l'index 0 de l'array, retourne "a is bigger"
      if biggest == numbers[0]
      return "a is bigger"

      elsif
      # Si la plus grande valeur se trouve à l'index 1 de l'array, retourne "b is bigger"
      biggest == numbers[1]
      return "b is bigger"

      else
      # Sinon, retourne "c is bigger"
      return "c is bigger"
      end
    end
end


#-----crazy stuff on strings-----
# Définition de la méthode reverse_upcase_noLTA qui prend l'attribut strings
# Application de la méthode .reverse pour inverser l'ordre des lettres, .upcase pour tout passer en majuscule et .delete"LTA" pour supprimer les lettres "LTA"
def reverse_upcase_noLTA(string)
  string.reverse.upcase.delete"LTA"
end

# Définition de la méthode array_42 qui prend l'attribut a
def array_42(a)
  # Vérifie si a contient le chiffre 42
  a.include?(42)
end

# Définition de la méthode magic_array qui prend l'attribut toto
def magic_array(toto)
  # Application de la méthode .flatten pour supprimmer les array dans les array et n'en faire qu'un seul.
  #                           .sort pour ranger les nombres du plus petit au plus grand
  #                           .collect pour multiplier chaque valeur par 2
  #                           .reject modulo 3 pour supprimer les multiples de 3
  #                           .uniq pour supprimer les valeurs en double
  toto.flatten.sort.collect { |n| n * 2 }.reject {|n| n % 3 == 0}.uniq
end
