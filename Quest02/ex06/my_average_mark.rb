def my_average_mark(classHash)
    classTotalScore = 0
    classTotalNumber = 0
    classHash.each do |name, score|
      classTotalScore += score
      classTotalNumber += 1
    end
    averageScore = classTotalScore / classTotalNumber
    return averageScore
end