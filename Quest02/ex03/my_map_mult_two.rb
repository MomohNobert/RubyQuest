def my_map_mult_two(numbers)
    numbersTwice = []
    numbers.map do |n|
      if n.instance_of? Fixnum
        nTwice = n * 2
        numbersTwice.push(nTwice)
      else
        numbersTwice.push("#{n} is not an Integer, validate your array.")
      end
    end
    return numbersTwice
end