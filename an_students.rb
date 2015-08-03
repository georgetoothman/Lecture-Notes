students = File.readlines('footang_clan')
# p students.grep(/an/) #=> has an somewhere
# p students.grep(/an\b/) #=> name ends with 'an'
p students.grep(/^[aeiou]/) #=> name begins with a vowel