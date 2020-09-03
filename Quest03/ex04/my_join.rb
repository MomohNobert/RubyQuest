def my_join(array, separator)
    array.length == 0 ? (puts "This array is empty. Check your inputs."; return;) : nil
  
    array.map do |a|
      if a.instance_of? String
        next
      else
        puts "#{a} is not a String. Check your inputs."
        return
      end
    end
  
    array.join(separator)
end