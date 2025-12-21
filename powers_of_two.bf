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