def my_map_mult_two(numbers)
    numbersTwice = []
    numbers.map do |n|
      nTwice = n * 2
      numbersTwice.push(nTwice)
    end
    return numbersTwice
end

print my_map_mult_two([1, 2, 3, 4, 5])