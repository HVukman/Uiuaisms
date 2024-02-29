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

# Problem 29 Euler

Power ← 100 # power for the problem

Size ← + 1 Power     # for the right size 
SizeArray ← -1 Power # likewise

Array ← ⊚ > 1 ⇡ Size # array from 1 until size (excluding)

⧻ ◴ ♭ ⊞ⁿ Array ⍉ ↯ SizeArray Array

# making two arrays, reshape the size array, transpose size array ⍉
# size array is [2 2 2 2;3 3 3 3; ...]
# taking the power of each entry with ⊞ⁿ 
# make an one dimensional array again with ♭
# remove duplicates with ⊝
# show length ⧻

## target should be 2+7=9
## output is 0,2 the indices
Nums ← [2 10 7 10]
Target ← 9
Indices ← ⊚≤ Target Nums
Test ← ⊏ Indices Nums
⍥(↘1.)-1 ⧻Indices Test
