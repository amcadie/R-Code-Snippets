manipulate(ggplot(mtcars, aes_string(x = "disp", y = y.factor)) + 
                      geom_point(color = "salmon"), 
                  y.factor = picker("mpg", "hp"))