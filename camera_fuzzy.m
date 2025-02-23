fuzzy
num=[-1 62360]

num =

          -1       62360

den=[(1 200)*(1 13.6)*(1 22.9)]
 den=[(1 200)*(1 13.6)*(1 22.9)]
         ?
Error: Unexpected MATLAB expression.
 
den=([1 200)*(1 13.6)*(1 22.9]])
 den=([1 200)*(1 13.6)*(1 22.9]])
            ?
Error: Unbalanced or unexpected parenthesis or bracket.
 
den=([(1 200)*(1 13.6)*(1 22.9)])
 den=([(1 200)*(1 13.6)*(1 22.9)])
          ?
Error: Unexpected MATLAB expression.
 
den=[(1 200)*(1 13.6)*(1 22.9)]
 den=[(1 200)*(1 13.6)*(1 22.9)]
         ?
Error: Unexpected MATLAB expression.
 
f1= [1 200]

f1 =

     1   200

f2=[1 13.6]

f2 =

    1.0000   13.6000

f3=[1 22.9]

f3 =

    1.0000   22.9000

den=f1*f2*f3
Error using  * 
Inner matrix dimensions must agree.
 
ft=tf(num,f1*f2*f3)
Error using  * 
Inner matrix dimensions must agree.
 
syms s
den=(s+200)*(s+13.6)*(s+22.9)
 
den =
 
(s + 68/5)*(s + 200)*(s + 229/10)
 
expand(den)
 
ans =
 
s^3 + (473*s^2)/2 + (190286*s)/25 + 62288
 
de=[1 473/2 190286/25 62288]

de =

   1.0e+04 *

    0.0001    0.0237    0.7611    6.2288

Gs=tf(num,de)

Gs =
 
             -s + 62360
  --------------------------------
  s^3 + 236.5 s^2 + 7611 s + 62288
 
Continuous-time transfer function.

gt=invtf(Gs)
Undefined function or variable 'invtf'.
 