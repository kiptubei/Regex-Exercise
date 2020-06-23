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

# read file line by line
def read_file(name)
  puts File.join(File.dirname(__FILE__), "/#{name}")
  file = File.open(File.join(File.dirname(__FILE__), "/#{name}"))
  file_data = file.readlines.map(&:chomp)
  file_data
end
# save third character in array

def find_3rd(file_name)
  ans = []
  lines = read_file(file_name.chomp)
  lines.each do |item|
    st = item.split(/ /) # use regex to identify space and split into array , split(/\s/)
    ans << st[2]
  end
  ans
end
# print array
puts find_3rd('sample.txt')
