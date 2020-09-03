def run_robot(instructions)
    initial_state = {x: 0, y: 0, bearing: :north}
  
    possible_actions = instructions.downcase.split("")
  
    possible_actions.map do |p|
      if p == "l"
        if initial_state[:bearing] == :north
          initial_state[:bearing] = :west
          next
        elsif initial_state[:bearing] == :east
          initial_state[:bearing] = :north
          next
        elsif initial_state[:bearing] == :south
          initial_state[:bearing] = :east
          next
        else
          initial_state[:bearing] = :south
          next
        end
  
      elsif p == "r"
        if initial_state[:bearing] == :north
          initial_state[:bearing] = :east
          next
        elsif initial_state[:bearing] == :east
          initial_state[:bearing] = :south
          next
        elsif initial_state[:bearing] == :south
          initial_state[:bearing] = :west
          next
        else
          initial_state[:bearing] = :north
          next
        end
  
      elsif p == "a"
        if initial_state[:bearing] == :north
          initial_state[:y] += 1
          next
        elsif initial_state[:bearing] == :east
          initial_state[:x] += 1
          next
        elsif initial_state[:bearing] == :south
          initial_state[:y] -= 1
          next
        else
          initial_state[:x] -= 1
          next
        end
  
      else
        puts "Wrong directions have been fed in. Check your input." 
        return
      end
    end
  
    return initial_state
 end
