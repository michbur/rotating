library(magick)
library(ggimage)

image_read_svg("Flag_of_Denmark.svg") %>% 
  image_background("rgba(0,0,0,0)") %>% 
  image_rotate(45) %>% 
  image_write("Flag_of_Denmark_r.svg")


data.frame(x = 1L:10,
           y = 1L:10,
           img = sample(c("Flag_of_Denmark.svg",
                   "Flag_of_Denmark_r.svg"), 10, replace = TRUE)) %>% 
  ggplot(aes(x = x, y = y, image = img)) +
  geom_abline(slope = 1, intercept = 0) +
  geom_image(size = 0.05) 
