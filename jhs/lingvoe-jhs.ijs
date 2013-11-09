NB. my first j-jhs-js scipt
NB. based on ~j64-701/addons/ide/jhs/demo/jdemo3.ijs

coclass 'lingvoejhs'
coinsert 'jhs'

load '~j0def/lingvo_e/0le.ijs'

openpage =: 3 : 'jjs ''window.open("http://'',(gethv_jhs_ ''Host:''),''/'',(>y),''","_blank");'' '
openlingvoe_z_ =: 3 : 'openpage_lingvoejhs_ ''lingvoejhs'' '

jhtextarea_wrapon=: 4 : 0
t=.   '<textarea id="<ID>" name="<ID>" class="jhtextarea" wrap="on" rows="<ROWS>" cols="<COLS>" '
t=. t,'onkeydown="return jev(event)"',jeditatts,'><DATA></textarea>'
t hrplc 'ID DATA ROWS COLS';x;y
)

HBS=:  0 : 0
        jhh1 'Reorder letters in words'

'txt'   jhtextarea_wrapon 'I would like to reorde THIS-TEXT, Mr. Anderson!';10;100
jhbr,jhbr
'flip'  jhb 'proccess'    
jhbr,jhbr
'retxt' jhtextarea_wrapon 'more text';10;100
       desc  
    NB. jhdemo''
)

create=: 3 : 0
'lingvoejhs' jhr ''
)

ev_flip_click=: 3 : 0
NB. smoutput seebox NV ???
txt=. getvs 'txt'
jhrajax (re txt)
)

jev_get=: create NB. browser get request

JS=: 0 : 0
// send txt and value to J
function ev_flip_click(){jdoajax(["txt"],"");}

// firefox enter in textarea does not trigger default button event
// function ev_txt_enter(){jscdo("flip");}
// function ev_retxt_enter(){jscdo("flip");}

// ts is list of JASEP delimited strings
function ajax(ts)
{
 if(1!=ts.length)alert("wrong number of ajax results");
 jbyid("retxt").value=ts[0];
}
)

desc=: 0 : 0
<pre>
	just run it:
      load '~j0def/lingvo_e/jhs/lingvoe-jhs.ijs'
      openlingvoe ''
</pre>
)

