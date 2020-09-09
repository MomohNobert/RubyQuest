require 'readline'

while line = Readline.readline('> ', true)
  split_line = line.split()
  if split_line[0].downcase == "exit"
    print "Goodbye!"
    exit
  else
    print split_line
  end
end