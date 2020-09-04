def class_average(classHash)
    classTotalScore = 0.0
    classTotalNumber = 0
    classHash.each do |name, score|
      classTotalScore += score.to_f
      classTotalNumber += 1
    end
    return classTotalScore / classTotalNumber
end

def calculate_statistics
  class_csci101 = {
  "margot" => 17,
  "june" => 8,
  "colin" => 14,
  "lewis" => 10 }
  class_csci102 = {
  "quentin" => 16,
  "julie" => 15,
  "mark" => 8,
  "stephanie" => 13
  }
  puts "Average mark for the CSCI 101 class: #{class_average(class_csci101)}."
  puts "Average mark for the CSCI 102 class: #{class_average(class_csci102)}."
end

calculate_statistics