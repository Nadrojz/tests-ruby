def echo(hello)
  return hello
end

def shout(hello)
  return hello.upcase
end

def repeat(hello, num = 2)
  [hello] * num * " "
end

def start_of_word(hello, num)
  return hello[0..num - 1]
end

def first_word (toto)
  toto.split.first
end

def titleize (title)
  title = title.split.map(&:capitalize).join(' ')
end
