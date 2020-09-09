require 'csv'
class MyFirstSelect

  def initialize
    @column_array = []
    @hash_database = []

    file = CSV.read "nba_player_data.csv"

    file[0].map do |f|
      @column_array << f
    end

    file[1..file.length].map do |f|
      hash = Hash.new
      (0..f.length-1).each do |i|
        hash[@column_array[i]] = f[i]
      end
      @hash_database << hash
    end
  end

  def where(column_name, criteria)
    @hash_database.map do |h|
      if h[column_name] = criteria
        return h
      else 
        return nil
      end
    end
  end

end

hello = MyFirstSelect.new
print hello.where("name", "Alaa Adbelnaby")