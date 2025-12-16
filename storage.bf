/*
types of number storage
addition arrays = the value is the sum of the numbers in an array, memory usage = n / 255 e.g. 280 would be 255 | 25
base 10 array = the value is written in base 10 but like add 1 cuz arrays cant have 0(101 isn't viable to be printed), memory usage = log_10(n) e.g. 280 would be 2 | 8 | 0
binary array = the value is written as in base 2 but 1 is 2 and 0 is 1, kinda scuffed btwmemory usage = log_2(n) e.g. 280 would be 2 | 1 | 1 | 1 | 2 | 2 | 1 | 1 | 1
base 256 array = SKULL

Addition array:
to increment the array, go to the last value of the array and add 1. if it becomes 0, minus 1 and go right and add 1
to decrement the array, go to the last value of the array and minus 1. if it becomes 0, go to the left 1 or you won't be able to return to the start.
note: if n becomes 0, undefined behaviour will occur cuz arrays can't have 0
to increase/decrease by a value: just looped increment/decrement
to multiply: ok this is kind of really hard
to convert to other number formats: ok so this is kind of really hard
to output: ok this is kind of hard 
memory usage: O(n) so like not really that good lol it scales poorly even if it beats logn for n<510 and ties up to n<765
summary: easy to update, but hard to do anything else

Base 10 array:
to increment the array, go to the last value and add 1. if the value becomes 10, wait this is complicated one secodn
to decrement the array, go to the last value and minus 1. if the value becomes 0, go left.
to increase/decrease by a value: looped increment/decrement
multiply: uh oh
convert to other formats: maybe not that hard
output: trivial, loop through add 48 print minus 48
memory usage: O(logn) so its okay
summary: good.
*/



Addition array: (starts at 1)

incrementing program
/*
>>+<<
,[                     take input
>>[>]<+                increment the last value of the array
[->+>+<<]>>[-<<+>>]<     copy value across
[>-<[-]]>+[-<+>]<      lossy not function
[<->>]<[<]<           move the increment if last value 0 then return to input
?
,]                     loop until end of input
*/

adding program (adds input to the counter)
/*
>>+<<
,[                     take input
[-
>>[>]<+                increment the last value of the array
[->+>+<<]>>[-<<+>>]<     copy value across
[>-<[-]]>+[-<+>]<      lossy not function
[<->>]<[<]<           move the increment if last value 0 then return to input
]
?
,]                     loop until end of input
*/

output program (outputs every increment)
/*
to be written
*/

Base 10 array (starts at 1)

incrementing program

>>+<<
,[                     take input
>>[>]<+                increment the last value of the array
[->+>+<<]>>[-<<+>>]<     copy value across
----------[>-<[-]]>+[-<+>]<      lossy not_10 function
ok so i need to finish this
?
,]                     loop until end of input
