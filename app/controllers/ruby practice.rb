
def reverse(input)
  string = ""

  input = input.split("")
  index = input.length

  while index >= 0
    string << input[index]
    index -= 1
  end
  return string
end
