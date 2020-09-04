def run_robot(instructions)
  bearing = [:north, :east, :south, :west]
  initial_state = {x: 0, y: 0, bearing: :north}
  possible_actions = instructions.downcase.split("")
  possible_actions.map do |p|
    if p == "l"
      bearing.rotate!(-1)      
    elsif p == "r"
      bearing.rotate!(1)
    else
      bearing[0] == :north ? initial_state[:y] += 1 : initial_state[:y]
      bearing[0] == :east ? initial_state[:x] += 1 : initial_state[:x]
      bearing[0] == :south ? initial_state[:y] -= 1 : initial_state[:y]
      bearing[0] == :west ? initial_state[:x] -= 1 : initial_state[:x]
    end
  end
  initial_state[:bearing] = bearing[0]
  return initial_state
end

puts run_robot("raalall")
puts run_robot("aaaa")
puts run_robot("raara")
puts run_robot("")