def my_sort(array, order)
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
