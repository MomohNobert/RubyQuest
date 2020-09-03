def rostring(string)
    string = string.split()
  
    firstChar = string.first
    string.shift()
    string.push(firstChar)
  
    string = string.join(" ")
    return string
end