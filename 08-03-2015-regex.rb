# Jamie Zawinski -- Some ppl, 
# Stephen Cole Kleen invented regex
# Ken Thompson brought it into Unix 
# Steven worked at Cyrus

Verifying phone numbers, matching email addresses

Regular Expression

/found/ =~ "foundation" # = > 0
/found/ =~ "lost"       # = > nil

=~ is the comparator
/found/ is the regular expression
/found/ and "foundation" can be switched

Since it returns 0 -- which is truthy -- means you can enter it into a conditional

regex = /steven/
regex = Regexp.new('steven')
regex = %r{steven}

all are valid

// two empty slashes matches everything

"Steven".split(//)
"Steven".split("")
"Steven".split("e")
"Steven".split(/e/)

name = "Steven"
if /Steve/ =~ name
  "Hi Steven"
end

students = File.readlines('footang_clan')
puts students.grep(/an/)

# the p command preserves the structure of the array
# this can be done in the command line by doing cat | rep an






