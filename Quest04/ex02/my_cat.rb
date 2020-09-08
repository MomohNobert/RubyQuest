def my_cat file_name
    result = []
    File.open(file_name) do |f|
        f.each_with_index do |l, i|
            result << [i, l]
        end
    end
    return result
end
puts my_cat "my_cat.rb"