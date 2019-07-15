# Définition de la variable add qui prend les attributs num1 et num2 et les additionne
def add (num1,num2)
  num1 + num2
end

# Définition de la variable subtract qui prend les attributs num1 et num2 et soustrait num2 à num1
def subtract (num1,num2)
  num1 - num2
end

# Définition de la variable sum qui prend le ou les attributs num et fait la somme de tous les nums
def sum (num)
  num.sum
end

# Définition de la variable multiply qui prends les attributs num1 et num2 et les multiplie
def multiply(num1,num2)
  num1 * num2
end

# Définition de la variable power qui prend les attributs  num1 et num2 et calcule num1 puissance num2
def power(num1,num2)
  num1 ** num2
end

# Définition de la variable factorial qui prend l'attribut num et calcul le factoriel de ce chiffre
def factorial(num)
  (1..num).inject(:*) || 1
end
