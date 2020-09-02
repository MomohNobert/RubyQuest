def my_string_index(haystack, needle)
    index = haystack.index(needle)
    if index
      return index
    else 
      return -1
    end
  end