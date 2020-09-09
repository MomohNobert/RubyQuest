require 'readline'

while line = Readline.readline('> ', true)

  split_line = line.split()

  if split_line.first == "exit"
    print "Goodbye!"
    exit
  end
  print split_line
  print "\n"
end
