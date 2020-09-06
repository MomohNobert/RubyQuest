def my_csv_parser(filename, seperator)
    data_array = []
    File.foreach(filename) do |line| 
        data_array << line.split(seperator)
    end
    return data_array
end

print my_csv_parser("data.csv", ",")