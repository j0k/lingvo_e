NB. \WARN/ I'm still j-n0b, don't copy my coding style

NB. starting
NB. lingvo experiment 

reord  =: /: ?~@#

NB. word reord
wRe    =: ({. , reord@:}:@:}. , {:) ^: ((3&<) @: #) 

WD     =: ' ',CR,LF  	      	  	     	    NB. word delimiter
LD     =: '!?@#$%^&*()[]{}<>''",.:;\/|-=',WD 	    NB. letter delimiters


div    =: (1 (0) }                         ([ e.~]))  < ;. 1 ]
divD   =: (1 (0) } (>:&1 @: (_1&|. + ]) @: ([ e.~]))) < ;. 1 ]
NB. _1&}. ... for '**hello' -> '*|*|hello' (not '*|*hello')
NB. >:&1      for 0 0 1 2 1 0 0 -> 0 0 1 1 1 0 0

divs   =: (WD&div L:0)`(LD&divD L:0)
exdivs =: ((divs`]@.L.)^:_)	NB. execute divs
reS    =: wRe L:0 @: exdivs	NB. REord , but keep structure
re     =: ;@;@ reS

NB. exps
load 'unicode'
]txt =: ucp '**Hello** Lyria; What happened with your dolphins?'

NB. (reord;wRe) 'some long str'
NB. ┌─────────────┬─────────────┐
NB. │ rgemnlo ssot│stneoom  gslr│
NB. └─────────────┴─────────────┘

NB. exdivs txt
NB. ┌───────────────┬───────────┬────────┬────────────┬────────┬────────┬──────────────┐
NB. │┌─┬─┬─────┬─┬─┐│┌─┬─────┬─┐│┌─┬────┐│┌─┬────────┐│┌─┬────┐│┌─┬────┐│┌─┬────────┬─┐│
NB. ││*│*│Hello│*│*│││ │Lyria│;│││ │What│││ │happened│││ │with│││ │your│││ │dolphins│?││
NB. │└─┴─┴─────┴─┴─┘│└─┴─────┴─┘│└─┴────┘│└─┴────────┘│└─┴────┘│└─┴────┘│└─┴────────┴─┘│
NB. └───────────────┴───────────┴────────┴────────────┴────────┴────────┴──────────────┘
      
NB. reS txt
NB. ┌───────────────┬───────────┬────────┬────────────┬────────┬────────┬──────────────┐
NB. │┌─┬─┬─────┬─┬─┐│┌─┬─────┬─┐│┌─┬────┐│┌─┬────────┐│┌─┬────┐│┌─┬────┐│┌─┬────────┬─┐│
NB. ││*│*│Hlleo│*│*│││ │Lryia│;│││ │What│││ │hapepend│││ │wtih│││ │your│││ │dhpnoils│?││
NB. │└─┴─┴─────┴─┴─┘│└─┴─────┴─┘│└─┴────┘│└─┴────────┘│└─┴────┘│└─┴────┘│└─┴────────┴─┘│
NB. └───────────────┴───────────┴────────┴────────────┴────────┴────────┴──────────────┘
      
NB. re txt
NB. **Hlelo** Lryia; Waht heanpepd with yuor dphnlois?
NB. nb. result is differ course ? return new values


NB. re ucp 'При-вет, подружка. Как поживаешь?'
NB. wRe  'heloworld'

NB. load 'debug'

NB. dbr 1
NB. dbr 0