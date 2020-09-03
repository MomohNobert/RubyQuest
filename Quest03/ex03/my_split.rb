def my_split(string, charset)
    string.length == 0 ? (puts "This string is empty. Check your inputs."; return;) : nil
  
    character_array = string.split(charset)
  
    return character_array
end
  
print my_split("abc def gh\t!", " \t")