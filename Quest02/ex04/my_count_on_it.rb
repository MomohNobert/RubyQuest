def my_count_on_it(stringArray)
    stringArrayLength = []
    stringArray.map do |s|
      if s.instance_of? String
        size = s.length
        stringArrayLength.push(size)
      else 
        stringArrayLength.push("#{s} is not a string.")
      end
    end
    return stringArrayLength
end