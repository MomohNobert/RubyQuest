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

  def join(column_name, filename)
    @column_2_array = []
    @hash_2_database = []
    @player_data = []

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

    hash_1 = {}
    @@hash_database.map do |h|
      if h["Player"] == column_name
        hash_1 =  h
        break
      else 
        nil
      end
    end

    hash_2 = {}
    @hash_2_database.map do |h|
      print h["player"]
      if h["name"] == column_name
        hash_2 = h
        break
      else 
        nil
      end
    end

    return hash_1.merge(hash_2)
  end



end

hello = MyFirstSelectWithJoin.new("nba_players.csv")
# print hello.where("name", "Alaa Adbelnaby")
print hello.join("Curly Armstrong", "nba_player_data.csv")