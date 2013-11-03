NB. work with example files: eng.txt, rus.txt

load '0le.ijs'
load '~J0kutils/boxcyc.ijs'	NB. form git: j0k/ju

ex      =:  'eng.txt';'rus.txt'
reordex =:  're_'&, L:0 ex
NB. ┌──────────┬──────────┐
NB. │re_eng.txt│re_rus.txt│
NB. └──────────┴──────────┘

readf   =: 1!:1
writef  =: 1!:2

dat     =: ucp@readf@< L:0 ex
redat   =: re each dat

NB. ]str =: ((i.20)&{) each redat                   NB. first 20 letters
NB. ]s2w =: (;)`'' (boxcyc L:1) cross (reordex;<str)
NB. ┌─────────────────────────────────┬────────────────────────────────────────────────────┐
NB. │┌──────────┬────────────────────┐│┌──────────┬───────────────────────────────────────┐│
NB. ││re_eng.txt│Jaen Baludarlird (Fc│││re_rus.txt│Ааслкде́нр Риамноо́в││
NB. │└──────────┴────────────────────┘│└──────────┴───────────────────────────────────────┘│
NB. └─────────────────────────────────┴────────────────────────────────────────────────────┘
      
s2w =: (;)`'' (boxcyc L:1) cross (reordex;<redat)
dumpfile =: 3 : '(utf8@:(1&{::) writef <@:(0&{::)) y'

dumpfile each s2w		NB.down
