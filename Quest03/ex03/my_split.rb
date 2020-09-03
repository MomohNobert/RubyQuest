def my_split(string, charset)
    string.length == 0 ? (puts "This string is empty. Check your inputs."; return;) : nil

    charset_array = charset.split("")
  
    character_array = string.split(Regexp.union(charset_array))

    result = character_array.select do |character|
        character != ""
    end
  
    return result
end
  
print my_split("abc def gh\t!", " \t")