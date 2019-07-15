def who_is_bigger(a, b, c)

    if a == nil || b == nil || c == nil
    return "nil detected"

    else
      numbers = [a, b, c]
      biggest = numbers.max
      if biggest == numbers[0]
      return "a is bigger"

      elsif
      biggest == numbers[1]
      return "b is bigger"

      else
      return "c is bigger"
      end
    end
end


def reverse_upcase_noLTA(string)
  string.reverse.upcase.delete"LTA"
end

def array_42(a)
  a.include?(42)
end


def magic_array(toto)
  toto.flatten.sort.collect { |n| n * 2 }.reject {|n| n % 3 == 0}.uniq
end
