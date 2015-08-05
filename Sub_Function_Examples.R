> test <- c("XXX", "cat", "dog", "XXX", "XXX")
> test
[1] "XXX" "cat" "dog" "XXX" "XXX"
> sub(x=test, pattern = "XXX", replacement = "parrot")
[1] "parrot" "cat"    "dog"    "parrot" "parrot"
> test <- as.factor(c(5, 8, 9, "XXX", 8, 4, "XXX"))
> test
[1] 5   8   9   XXX 8   4   XXX
Levels: 4 5 8 9 XXX
> sub(x=test, pattern="XXX", replacement=0)
[1] "5" "8" "9" "0" "8" "4" "0"


#slicing elements of a character vector and replacing with an element of the slice
test2 <- c("4.56% excess anode", "4.87% excess anode", "43.897% excess anode")

#pattern regex translates to "group 1 - any character any number of times, group 2 - %,
#group 3 - any character any number of times". replacement "\\1" replaces with unit 1
sub(x = test2, pattern = '(.*)(%)(.*)', replacement = '\\1')
[1] "4.56"   "4.87"   "43.897"