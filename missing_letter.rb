# Return the missing letter from a given range of letters passed into the method
# as a string. If there is no missing letter, the method should return nil.
# bonus: returns a string of all missing letters as a string. ex: find_missing_letter("ace") would return "bd", write your own test.

def find_missing_letter(range)
  letters = range.split("")
  missing_letters = []

  letters.each_with_index do |letter, index|
    next_element = letters[index + 1]
    if next_element != nil
      if letter.ord + 1 != next_element.ord
        difference = (next_element.ord - letter.ord) - 1

        temp_letter_value = letter.ord + 1

        difference.times do
          missing_letters.push(temp_letter_value.chr)
          temp_letter_value += 1
        end
      end
    end
  end

  if missing_letters.empty?
    return nil
  else
    return missing_letters.join("")
  end
end

# Driver code - don't touch anything below this line.
puts "TESTING find_missing_letter..."
puts

result = find_missing_letter("opqrsuv")

puts "Your method returned:"
puts result
puts

if result == "t"
  puts "PASS!"
else
  puts "F"
end

puts
puts "--------------"
puts

result = find_missing_letter("xyz")

puts "Your method returned:"
puts result
puts

if result == nil
  puts "PASS!"
else
  puts "F"
end

puts
puts "--------------"
puts

result = find_missing_letter("abefh")

puts "Your method returned:"
puts result
puts

if result == "cdg"
  puts "PASS!"
else
  puts "F"
end

puts
puts "--------------"
puts

result = find_missing_letter("ah")

puts "Your method returned:"
puts result
puts

if result == "bcdefg"
  puts "PASS!"
else
  puts "F"
end

puts
puts "--------------"
puts

result = find_missing_letter("ahj")

puts "Your method returned:"
puts result
puts

if result == "bcdefgi"
  puts "PASS!"
else
  puts "F"
end