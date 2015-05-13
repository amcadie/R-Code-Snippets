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
> test <- sub(x=test, pattern="XXX", replacement=0)
> test <- as.numeric(test)
> test
[1] 5 8 9 0 8 4 0