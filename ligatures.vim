" set correct conceal
set conceallevel=1
set concealcursor=nvi

" lambdas
syntax match hsLambda "\\" conceal cchar=λ

" function composition
syntax match hsCompose / \. /ms=s+1,me=e-1 conceal cchar=ù

" ->
syn match MHArrow   /->/       contains=MHArrowM,MHArrowH
syn match MHArrowM  /-/        contained containedin=MHArrow conceal cchar=Ä
syn match MHArrowH  /-\@<=>/   contained containedin=MHArrow conceal cchar=→

" <Ä
syn match HMArrow   /<\ze-/    contains=HMArrowM,HMArrowH
syn match HMArrowH  /-/        contained containedin=HMArrow conceal cchar=Ä
syn match HMArrowH  /</        contained containedin=HMArrow conceal cchar=←

" =>
syn match DMHArrow   /=>/       contains=DMHArrowM,DMHArrowH
syn match DMHArrowM  /=/        contained containedin=DMHArrow conceal cchar=Í
syn match DMHArrowH  /=\@<=>/   contained containedin=DMHArrow conceal cchar=⇑

" >>Í
syn match DTTMArrow   />>\ze=/   contains=DTTMArrowT,DTTMArrowTT
syn match DTTMArrowTT />/        contained containedin=DTTMArrow conceal cchar=>
syn match DTTMArrowT  />\@<=>/   contained containedin=DTTMArrow conceal cchar=

" >=>
syn match DTMHArrow   />=>/      contains=DTMHArrowT,DTMHArrowM,DTMHArrowH
syn match DTMHArrowT  />/        contained containedin=DTMHArrow conceal cchar=
syn match DTMHArrowM  /=/        contained containedin=DTMHArrow conceal cchar=Í
syn match DTMHArrowH  /=\@<=>/   contained containedin=DTMHArrow conceal cchar=⇑

" <=<
syn match DHMTArrow   /<=</      contains=DHMTArrowM,DHMTArrowH,DHMTArrowT
syn match DHMTArrowH  /</        contained containedin=DHMTArrow conceal cchar=⇐
syn match DHMTArrowM  /=/        contained containedin=DHMTArrow conceal cchar=Í
syn match DHMTArrowT  /=\@<=</   contained containedin=DHMTArrow conceal cchar=

" =<<
syn match DMTTArrow    /=<</      contains=DMTTArrowT,DMTTArrowTT,DMTTArrowM
syn match DMTTArrowM   /=/        contained containedin=DMTTArrow conceal cchar=Í
syn match DMTTArrowT   /</        contained containedin=DMTTArrow conceal cchar=
syn match DMTTArrowTT  /<\@<=</   contained containedin=DMTTArrow conceal cchar=<

" -<
syn match MTArrow   /-</       contains=MTArrowT,MTArrowM
syn match MTArrowT  /-/        contained containedin=MTArrow conceal cchar=Ä
syn match MTArrowM  /-\@<=</   contained containedin=MTArrow conceal cchar=⤙

" -<<
syn match MTTArrow   /-<</          contains=MTTArrowT,MTTArrowM,HTTArrowTT
syn match MTTArrowM  /-<</me=s+1    contained containedin=MTTArrow conceal cchar=Ä
syn match MTTArrowT  /-\@<=</       contained containedin=MTTArrow conceal cchar=⤙
syn match MTTArrowTT /\(-<\)\@<=</  contained containedin=MTTArrow conceal cchar=<

" >Ä
syn match TMArrow   />\ze-/    contains=TMArrowT,TMArrowM
syn match TMArrowM  />/        contained containedin=TMArrow conceal cchar=Ä
syn match TMArrowT  />/        contained containedin=TMArrow conceal cchar=⤚

">>Ä
syn match TTMArrow    />>\ze-/  contains=TTMArrowT,TTMArrowTT
syn match TTMArrowTT  />/       contained containedin=TTMArrow conceal cchar=>
syn match TTMArrowT   />\@<=>/  contained containedin=TTMArrow conceal cchar=⤚
