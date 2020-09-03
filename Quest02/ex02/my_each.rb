def my_each(numbers)
    numbers.each do |n|
      if n.instance_of? Fixnum
        puts n
      else
        puts "#{n} is not an Integer"
      end
    end
end
