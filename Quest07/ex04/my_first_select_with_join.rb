require 'csv'
class MyFirstSelectWithJoin

  @@hash_database = []
  def initialize(filename)
    @column_array = []

    file = CSV.read filename

    file[0].map do |f|
      @column_array << f
    end

    file[1..file.length].map do |f|
      hash = Hash.new
      (0..f.length-1).each do |i|
        hash[@column_array[i]] = f[i]
      end
      @@hash_database << hash
    end
  end

  def where(column_name, criteria)
    @@hash_database.map do |h|
      if h[column_name] = criteria
        return h
      else 
        return nil
      end
    end
  end

  def join(column_name_a, filename, column_name_b)
    @column_2_array = []
    @hash_2_database = []
    @player_data = []
    @merged_array = []

    file = CSV.read filename

    file[0].map do |f|
      @column_2_array << f
    end

    file[1..file.length].map do |f|
      hash = Hash.new
      (0..f.length-1).each do |i|
        hash[@column_2_array[i]] = f[i]
      end
      @hash_2_database << hash
    end

    @@hash_database.map do |h|
      @hash_2_database.map do |w|
        if h["Player"] == w["name"]
          hash = h.merge(w)
          @merged_array << hash
        else
          nil
        end
      end
    end

    return @merged_array

  end



end

hello = MyFirstSelectWithJoin.new("nba_players.csv")
# print hello.where("name", "Alaa Adbelnaby")
print hello.join("Player", "nba_player_data.csv", "name").take(10)