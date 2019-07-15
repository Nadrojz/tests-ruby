#-----temperature conversion functions-----
# Définition de la méthode ftoc qui prend l'attribut temp (température en fahrenheit) et qui convertie la température en celcius
def ftoc(temp)
  celcius = (temp - 32) * 5 / 9
end

# Définition de la méthode ctof qui prend l'attribut temp (température en celcius) et qui convertie la température en fahrenheit.
# L'attribut temp est transformé en float pour être compris entre 0.1 et 98.6

def ctof(temp)
  fahrenheit = (temp.to_f * 9 / 5) + 32
end
