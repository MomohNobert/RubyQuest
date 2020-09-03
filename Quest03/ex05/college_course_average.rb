def class_average(classHash)
    classTotalScore = 0.0
    classTotalNumber = 0
  
    classHash.each do |name, score|
      if !score
        puts "#{name} doesn't have a score"
        next
      elsif !score.instance_of? Fixnum
        puts "#{name.capitalize}'s score is wrongly inputed."
        next
      else 
        classTotalScore += score.to_f
        classTotalNumber += 1
      end
    end
  
    averageScore = classTotalScore / classTotalNumber
    return averageScore
end