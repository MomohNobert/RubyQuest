def my_sort(array, order)
    array.map do |a|
      if a.instance_of? Fixnum
        next
      else
        puts "#{a} is not an Integer. Check your inputs."
        return
      end
    end
  
    if order == :asc
      array = array.sort
      return array
    elsif order == :desc
      array = array.sort { |a,b| b <=> a}
      return array
    else 
      puts "The wrong order has been specified. Check your input."
      return
    end
end
