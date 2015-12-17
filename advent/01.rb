#!/usr/bin/ruby

File.open("01.txt") do |f|
  basement = 0
  floor = 0
  pos = 0
  until f.eof?
    c = f.read(1)
    pos += 1
    if (c == "(")
      floor += 1
    elsif (c == ")")
      floor -= 1
    end
    if floor < 0 && basement == 0
      basement = pos
    end
  end
  puts "Floor: #{floor}"
  puts "Entered Basement on Instruction: #{basement}"
end
    

