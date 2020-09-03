def my_is_sort(array)
    array.map do |a|
      if a.instance_of? Fixnum
        next
      else
        puts "#{a} is not an Integer. Check your inputs."
        return
      end
    end
  
    if array == array.sort or array == array.sort { |a,b| b <=> a }
      return true
    else
      return false
    end
end