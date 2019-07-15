# Définition de la méthode time_string qui prend comme attribut un nombre de secondes
# Cette méthode est une méthode existante de Ruby
def time_string(time)
  Time.at(time).utc.strftime("%H:%M:%S")
end
