require 'CSV'

class User
    @@counter = 1

    def create(first_name,last_name,age,password,email)
        @file = CSV.open("db.raw","a+")
        user_details =  [@@counter,first_name,last_name,age,email,password]
        @file.puts user_details
        @@counter += 1
        @file.close
        return user_details[0]
    end

    def get(user_id)
        @db = []
        @header = ["id","first_name", "last_name", "age", "email", "password"]

        file = CSV.read "db.raw"
        file.map do |f|
            if user_id.to_i == f[0].to_i
                return f
            else
                next
            end
            return nil
        end
    end

    def all()
        @db = []
        @header = ["id","first_name", "last_name", "age", "email", "password"]

        file = CSV.read "db.raw"
        file[1..file.length].map do |f|
            hash = Hash.new
            (0..f.length-1).each do |i|
                hash[@header[i]] = f[i]
            end
            @db << hash
        end

        return @db
    end

    def update(user_id,attribute, value)
        user = get user_id
        index = @@headers.index(attribute)
        p index
    end

    def destroy(user_id)
    end
end

user = User.new
user.create("nobert", "momoh", 1, "1234", "okhai0112@gmail.com")
user.create("nobert", "momoh", 1, "1234", "okhai0112@gmail.com")
user.create("nobert", "momoh", 1, "1234", "okhai0112@gmail.com")
user.create("nobert", "momoh", 1, "1234", "okhai0112@gmail.com")
user.create("nobert", "momoh", 1, "1234", "okhai0112@gmail.com")
print user.all