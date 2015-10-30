g <- ggplot(data = pba_sub, aes(x=Carbon_Additive, y = Charge_accept_per_g))
g <- g + geom_boxplot() + geom_point(color = 'steelblue', size = 3)
#hjust parameter takes values from 0 to 1, 1 puts lable fully below x axis
#with 45˚ rotation, correspondingly 0 works with 315˚ rotation
g <- g + theme(axis.text.x = element_text(angle = 315, hjust = 0))
g