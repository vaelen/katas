#!/usr/bin/ruby

first_verse = "A partridge in a pear tree."

days = [
  "first",
  "second",
  "third",
  "fourth",
  "fifth",
  "sixth",
  "seventh",
  "eighth",
  "ninth",
  "tenth",
  "eleventh",
  "twelfth"
]

verses = [
  "And a partridge in a pear tree.",
  "Two turtle doves",
  "Three french hens",
  "Four calling birds",
  "Five golden rings",
  "Six geese a-laying",
  "Seven swans a-swimming",
  "Eight maids a-milking",
  "Nine ladies dancing",
  "Ten lords a-leaping",
  "Eleven pipers piping",
  "Twelve drummers drumming"
]

chorus = "\t" + verses[0]

(0..11).each do |day|
  puts "On the #{days[day]} day of Christmas,"
  puts "My true love gave to me:"
  puts
  if day == 0
    puts "\t" + first_verse
  else
    chorus = "\t" + verses[day] + "\n" + chorus
    puts chorus
  end
  puts
end
