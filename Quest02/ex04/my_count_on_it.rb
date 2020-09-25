def my_count_on_it(stringArray)
  stringArrayLength = []
  stringArray.map do |s|
    stringArrayLength << s.length
  end
  return stringArrayLength
end

print my_count_on_it(["This", "is", "the", "way"])