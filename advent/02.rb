#!/usr/bin/ruby

total = 0
ribbon = 0
File.open("02.txt").each do |line|
  (h, w, l) = line.split("x")
  h = h.to_i
  w = w.to_i
  l = l.to_i
  
  sides = [l*w, w*h, h*l]
  area = 0
  sides.each do |s|
    area += 2*s
  end
  total += area + sides.min

  plist = [l, w, h]
  p1 = plist.min

  found = 0
  p2 = plist.reject{|x|
    if x == p1
      found += 1
    end
    x == p1 && found == 1
  }.min

  r1 = 2*p1
  r2 = 2*p2
  
  ribbon += r1 + r2
  ribbon += l*w*h
  
end
puts "Total: #{total}"
puts "Ribbon: #{ribbon}"
