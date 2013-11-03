#!/usr/local/bin/jconsole

load '0le.ijs'
load '~J0kutils/boxcyc.ijs'	NB. form git: j0k/ju

reverse =: utf8@re@ucp

NB. http://www.jsoftware.com/phrases/random_numbers.htm
NB. Randomizing random number seed
m3=: 9!:1@<.@(+/ .^&2@(6!:0@]))
m3 ''

reverse&.stdin ''

exit''

NB. cat eng.txt rus.txt | ./reorder.sh
NB. echo Hello reordered world! | ./reorder.sh