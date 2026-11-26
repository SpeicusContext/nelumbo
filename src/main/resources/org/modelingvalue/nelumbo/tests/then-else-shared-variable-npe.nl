// Regression test (fixed 2026-11-20; was bugs/then-else-shared-variable-npe.nl).
// A conditional expression whose condition and branch share a variable must answer
// instead of throwing a NullPointerException.
// Also check both conditional branches, the reversed comparison, and ground cases.
import nelumbo.integers

Integer a

(a<0 then a else 2)=-1 ? [(a=-1)][(a=0),..]
(a<0 then 2 else a)=3  ? [(a=3)][(a=0),..]
(a>0 then a else 2)=1  ? [(a=1)][(a=0),..]

(-1<0 then -1 else 2)=-1 ? [()][]
(0<0 then 0 else 2)=-1   ? [][()]
