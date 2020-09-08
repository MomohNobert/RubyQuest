class MyRedis 
    @@redis_db = []
  
    def my_set(key, value)
      hash = Hash[key => value]
      @@redis_db << hash
    end
  
    def my_get(key)
      @@redis_db.map do |a|
        a.each do |key2, value|
          if key2 == key
            return value
          else
            next
          end
          return nil
        end
      end
    end
  
    def my_mset(*arrays)
      arrays.map do |a|
        my_set(a[0], a[1])
      end
    end
  
    def my_mget(array)
      get_array = []
      array.map do |a|
        get_array << my_get(a)
      end
      return get_array
    end
  
    def my_del(del_array)
      @@redis_db.delete_if { |a| a[del_array[0]] == del_array[1]}
    end
  
    def my_exist(key)
      @@redis_db.map do |a|
        a.each do |key2, value|
          if key2 == key
            return true
            break
          else
            next
          end
          return false
        end
      end
    end
  
    def backup
      File.write("my_dump.rdb", "#{@@redis_db}")
    end
  
    def restore
      variable  = eval(File.read("my_dump.rdb"))
      @@redis_db = variable
      print @@redis_db
    end
  end