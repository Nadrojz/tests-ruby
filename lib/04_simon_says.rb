# Définition de la méthode echo qui prend l'attribut hello et renvoie ce même attribut
def echo(hello)
  return hello
end

# Définition de la méthode shout qui prend l'attribut hello et le met en majuscule grace à la méthode .upcase
def shout(hello)
  return hello.upcase
end

# Définition de la méthode repeat qui prend les attributs hello et num (défini à 2 par défaut)
def repeat(hello, num = 2)
  #Prend l'array hello, le multiplie par 2 par défaut ou par la valeur de num et remplace les ", " (ce sont les séparateurs entre chaque valeur dans un array) par " "
  [hello] * num * " "
end

# Définition de la méthode start_of_word qui prend les attributs hello et num
def start_of_word(hello, num)
  #Parcours hello et récupère les num - 1 premières lettres
  return hello[0..num - 1]
end

# Définition de la méthode first_word qui prend l'attribut toto
def first_word (toto)
  #La méthode .split prend chaque string et la met dans un array puis la méthode .first récupère la première valeur
  toto.split.first
end

#Définition de la méthode titleize qui prend l'attribut title
def titleize (title)
  # La méthode .split prend chaque string et la met dans un array puis la méthode .map(&:capitalize) transforme la première lettre de chaque mot en majuscule
  # La méthode .join(' ') premet de recoller chaque valeur de l'array en string et de les séparer par un espace
  title = title.split.map(&:capitalize).join(' ')
end
