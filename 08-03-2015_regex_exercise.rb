students = File.readlines('footang_clan')
use grep to find all students with /an/

^ TO $
beginning TO End

"Amanda, Steven, Josh" =~ /^A/ # => 0   checks the begins with A
"Amanda, Steven, Josh" =~ /^S/ # => nil checks for begins with S
"Amanda, Steven, Josh" =~ /h$/ # => 19  
"Amanda, Steven, Josh" =~ /n$/ # => nil



Border Character

\bword
word\b

"Amanda, Steven, Josh" =~ /\bs/ #=> 8  begins with
"Amanda, Steven, Josh" =~ /n\b/ #=> 13  we want not only n, but that it ends with n

Character Classes
The bracket has nothign to do with an array

#Find the vowel
/[aeiou]/ =~ "Banana" # = > 1

# Match letter starting with lowercase letter
/^[a-z]/ =~ "Fail"
/^[a-z]/ =~ "pass"

#Match string that starts with a letter case insensitive
/^[a-Zz-z]/ =~ "Win"
/^[a-z]/ =~ "Fail"

# makes search case insensitive
/^[a-Zz-z]/i =~ "Win" #=> 0 zero is the position where it matched

You can regex strings stored in a variable

^ means not if its used inside the brackets

/^[a-z]/ =~ "Pass" #=> 0
/[^a-z]/ =~ "fail" #=> nil
/^[^a-z]/ =~ "1 more times" #=> 0

# match string starting with a char then a non character

REGEX MASH
/^[a-z&&[^aeiou]]/ =~ "banana" # = > 0

SHORTCUTS - ANYTHING

/./ is the wildcard
/./ =~ "Match!" #=> 0
/./ =~ " " #=> 0
/./ =~ "" #=> nil
/.../ tests for three literal characters in a row

WORD CHARACTER

\w is short for [a-Zz-Z0-9_]
\W is not [a-Zz-Z0-9_]

/^\w\w\w/ =~ "Match"
/^\w\w\w/ =~ "I dont Match"

\d [0-9]
\D is not [0-9]

/^\d/ =~ '5' #=> 0
/^\D/ =~ '5' #=> nil
