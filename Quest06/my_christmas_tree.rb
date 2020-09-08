# ((1..20).to_a+[6]*4).each{|i|puts ('#'*i*2).center(80)};puts;puts 'Merry Christmas'.center(80)

def my_christmas_tree(times, count)
    array = []
    (times..(2*(3+times))).step(2).take(count + 3).to_a.each do |a|
        array << a
    end
    array.each{|i| puts ('*'*i).center(50)}
    return array[-1]
end
  
def iterate_count(count)
    i = 1
    iterate = 1
    while i < count
        current = my_christmas_tree(iterate, i)
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
  
iterate_count(5)