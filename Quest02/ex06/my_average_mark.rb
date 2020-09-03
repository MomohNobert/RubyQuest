def my_average_mark(classHash)
    classTotalScore = 0
    classTotalNumber = 0
  
    classHash.each do |name, score|
      if !score
        puts "#{name} doesn't have a score"
        return
      elsif !score.instance_of? Fixnum
        puts "#{name.capitalize}'s score is wrongly inputed."
      else 
        classTotalScore += score
        classTotalNumber += 1
      end
    end
  
    averageScore = classTotalScore / classTotalNumber
    return averageScore
end