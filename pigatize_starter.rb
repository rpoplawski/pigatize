#!/usr/bin/ruby
# Note for this exercise, follow these simplified pig latin rules
# If the first letter is a vowel, add "way" to the end
# If the first letter is a consonant, move it to the end and add "ay"
# Hint: Use regex

def pigatize(text)
  if starts_with_vowel?(text)
    text + "way"
  else
    text.chars.rotate.join + "ay"
  end
end

def starts_with_vowel?(text)
  # %(a e i o u y).include?(text[0])
  /^[aeiouy]/.match(text)
end

pigatize('apple')  == 'appleway'
pigatize('coffee') == 'offeecay'

loop do
  puts "Please enter a word and I will translate to pig latin"
  text = gets.chomp
  break if text.length == 0 # Break out of the loop if I say nothing
  puts pigatize(text)
end
