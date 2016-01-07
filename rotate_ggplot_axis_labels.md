###Rotating ggplot axis labels


```r
library(ggplot2, quietly = TRUE)

data(mtcars)

g <- ggplot(data = mtcars, aes(x = disp, y = mpg))
g <- g + geom_point(aes(color = as.factor(cyl)))
g
```

![plot of chunk unnamed-chunk-1](figure/unnamed-chunk-1-1.png) 

```r
g <- ggplot(data = mtcars, aes(x = disp, y = mpg))
g <- g + geom_point(aes(color = as.factor(cyl)))
g <- g + theme(axis.text.x = element_text(angle = 45))
g
```

![plot of chunk unnamed-chunk-1](figure/unnamed-chunk-1-2.png) 

```r
g <- ggplot(data = mtcars, aes(x = disp, y = mpg))
g <- g + geom_point(aes(color = as.factor(cyl)))
g <- g + theme(axis.text.x = element_text(angle = 90))
g
```

![plot of chunk unnamed-chunk-1](figure/unnamed-chunk-1-3.png) 
