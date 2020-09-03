def my_array_uniq(numberArray)
    newNumberArray = []
  
    numberArray.map do |n|
      if !n.instance_of? Fixnum
        puts "#{n} is not a number"
      elsif newNumberArray.include? n
        next
      else
        newNumberArray.push(n)
      end
    end
  
    return newNumberArray
end