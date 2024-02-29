# https://exercism.org/tracks/raku/exercises/nucleotide-count
# ≍ ""(▽≠,"G")(▽≠,"T")(▽≠,"C")(▽≠,"A") "GATTAC"
≍ "ACGT" ⊏⍏.◴ "CGATTAC"
# /+⌕"A" "GATTAC"

## 99 bottles of beer..somewhat
n ← 99
m ← n n -1

Zz‼! ← ⊂ ⊂ ⊂ ⊂ °⋕ ^!" bottles of beer on the wall, " ⊂ °⋕ ^! " bottles of beer, " "Take one down, pass it around,\n " ⊂ °⋕ -1 ^! " bottles of beer"
Zz‼!n n n

String ← $"_ bottles of beer on the wall, _ bottles of beer, Take one down, pass it around,\n _ bottles of beer on the wall"
String m n

"Euler Solution"
T ← 100 # initial starting temp
TR ← 20 # room temp
TMINUSTR ← - TR T
h ← 10      # step size
k ← 0.07    # coefficent
TEND ← 100  # end time
n ← ÷ h 100 # steps
# inital starting point
T
.
# ..  clone the top of stack and take if for next step
# repeat the steps n times with ⍥
Solution ← [⍥(.. - × h × k - TR)]+ n 1
⇌ ⊂ Solution T

# analytical solution
"Analytical Solution"
# apply function to LIST
List ← × k × h ⇡n
# Analytical solution applied
+ TR × TMINUSTR ⁿ ¯List e
