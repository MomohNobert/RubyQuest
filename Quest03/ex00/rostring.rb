def rostring(string)
    firstChar = string.first
    string.shift()
    string.push(firstChar)
  
    return string
end