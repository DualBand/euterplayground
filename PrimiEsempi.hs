import Euterpea

-- esempi numerici a caso
somma :: Float -> Float -> Float -- nomeFunzione :: TipoParametro1 -> TipoParametro2 -> TipoRisultato
somma x y = x + y -- nomeFunzione parametro1 parametro2 = quello che la funzione fa

valAssoluto :: Float -> Float
valAssoluto x = if x < 0 then - x else x

-- esempi musicali
ut = c
re = d
mi = e
fa = f
sol = g
la = a
si = b

arpeggioDoM :: [Music Pitch] 
arpeggioDoM = undefined -- da finire [ut, mi, sol]