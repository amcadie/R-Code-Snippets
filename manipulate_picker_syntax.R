manipulate(ggplot(mtcars, aes_string(x = "disp", y = y.factor)) + 
                      geom_point(color = "black", size = 7, alpha = 0.5) + 
                      geom_point(color = "salmon", size = 6, alpha = 0.5), 
                  y.factor = picker("mpg", "hp"))