# 1.Check if the pattern "ss" appears in the string "Mississippi".
txt = 'Mississippi'

def contains_ss?(txt)
  puts 'Check if the pattern "ss" appears in the string "Mississippi".'

  if txt =~ /ss/
    puts 'yes'
  else
    puts 'no'
  end
end

contains_ss?(txt)

# 2.Check whether the letter i occurs three or more times in Mississippi.
txt = 'Mississippi'
def thrice_i(txt)
  puts 'Check whether the letter i occurs three or more times in Mississippi.'

  if /(.*i.*){3,}/.match(txt)
    puts 'true'
  else
    puts 'false'
  end
end

thrice_i(txt)
# 3.Print out the 3rd word of each sentence from a list of sentences.

# read file

def cats_and(txt)
  puts 'Check whether the letter i occurs three or more times in Mississippi.'
  if txt =~ /(cat|dog)/i
    puts 'true'
  else
    puts 'false'
  end
end

cat = 'The lazy Cat.'
dog = 'The dog barks.'
cats_and_dogs = 'The lazy cat, chased by the barking dog'

cats_and(cat)

cats_and(dog)

cats_and(cats_and_dogs)
