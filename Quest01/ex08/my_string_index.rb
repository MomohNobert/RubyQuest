def my_string_index(haystack, needle)
    index = haystack.index(needle)
    if index
      puts index
    else 
      puts "Index not available."
    end
  end