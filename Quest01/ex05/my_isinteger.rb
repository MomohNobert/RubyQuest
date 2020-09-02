def my_isinteger(n)
    if n.instance_of? Fixnum
      puts 1
    else
      puts 0
    end
  end