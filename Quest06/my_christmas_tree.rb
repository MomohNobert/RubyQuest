# ((1..20).to_a+[6]*4).each{|i|puts ('#'*i*2).center(80)};puts;puts 'Merry Christmas'.center(80)

def tree(times, count)
    array = []
    (times..(2*(3+times))).step(2).take(count + 3).to_a.each do |a|
        array << a
    end
    array.each{|i| puts ('*'*i).center(50)}
    return array[-1]
end
  
def my_christmas_tree(count)
    count = count[0].to_i
    
    i = 1
    iterate = 1
    while i < count
        current = tree(iterate, i)
        iterate = current - 2
        i += 1
    end

    c = 1
    initial_count = count
    while c < count 
        puts ('|'*initial_count).center(50)
        c += 1
    end
end
  
my_christmas_tree ARGV