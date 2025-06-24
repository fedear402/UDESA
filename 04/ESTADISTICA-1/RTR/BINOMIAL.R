options(scipen=999) 
diamantes <- c(0:13)
plot(diamantes, dbinom(diamantes, 25, 0.25),
     type='h',
     xaxt="n")
axis(1, at = seq(0, 13, by = 1), las=2)

#############################################################

library(tidyverse)
heads = 0:25

data.frame(heads, prob = dbinom(heads, 50, 0.25)) %>%
  mutate(Heads = ifelse(heads == 12, "", "other")) %>%
  ggplot(aes(x = factor(heads), y = prob, fill = Heads)) +
  geom_col() +
  geom_text(
    aes(label = round(prob,2), y = prob + 0.01),
    position = position_dodge(0.9),
    size = 3,
    vjust = 0
  )


#############################################################

messi <- c(0:10)
plot(messi, dbinom(messi, 300, 1/624),
     type='h',
     xaxt="n")
axis(1, at = seq(0, 10, by = 5), las=2)

data.frame(figuritas=0:500, prob= dbinom(1, 0:500, 1/625))  %>%
  ggplot(aes(x = factor(figuritas), y = prob, fill = figuritas)) +
  geom_col() +
  geom_text(
    aes(label = round(prob,1), y = prob + 0.01),
    position = position_dodge(0.9),
    size = 0.25,
    vjust = 0
  )

#############################################################
int = 0:25
plot(int, dgeom(0:25, 1/625))






a = (0.78 * 0.7179) / ((0.78 * 0.7179) + ((1 - 0.82) * (1-0.7179)))
0.56 / a                                       

0.1*0.2
log(0.05) / log(0.72)
