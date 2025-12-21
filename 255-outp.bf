/*
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

output program 
>>+<<
,[[->>[>]<+[->+>+<<]>>[-<<+>>]<[>-<[-]]>+[-<+>]<[<->>]<[<]<],]
?
>>[>]<[->>+<<]+
?
<[[->>+<<]>[-<+>]<+<]>
?
