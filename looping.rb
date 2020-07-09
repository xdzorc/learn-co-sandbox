def looping(num)
  counter =0
  loop do 
    puts "Never pass a school bus if it has flashing red lghts"
    counter+=1
    if counter>=num
      break
    end
  end
end
looping(6)    