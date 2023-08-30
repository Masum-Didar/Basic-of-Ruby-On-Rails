def greeting(name)
  "Hello! #{name}".rstrip
end
puts greeting("Masum is learning ruby clean code")
def greeting2(name)
  "Hello! #{name.split.last}".rstrip
end
puts greeting2("Masum is learning ruby clean code")