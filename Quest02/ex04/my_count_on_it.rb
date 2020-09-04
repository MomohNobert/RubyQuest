def my_count_on_it(stringArray)
    stringArrayLength = []
    stringArray.map do |s|
      size = s.length
      stringArrayLength.push(size)
    end
    return stringArrayLength
end