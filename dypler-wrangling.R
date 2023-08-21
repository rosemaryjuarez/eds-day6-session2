# --------section 1: Filter ----------

library(tidyverse)
library(palmerpenguins)
library(lterdatasampler)

# look for exact match: ==
#
penguins_biscoe<- penguins %>% filter(island == 'Biscoe')

penguins_2007 <- penguins %>% filter(year == 2007)

adelie_torgersen <- penguins %>% filter(species == 'Adelie' & island == 'Torgersen')
# alt: penguins %>% filter(species == 'Adelie, Island = 'Torgersen)
#
#
# Create a subset from penguins that only xontains Gentoo penguins observed in 2008
penguins_2008 <- penguins %>% filter(species == 'Gentoo'& year == 2007)


# create subset that contains Gentoo and Adelies
gentoo_adelie <- penguins %>% filter(species == 'Gentoo', year == 'Adelie')

#create a subset that contains observations where the island is Dream or the year is 2009
dream_2009 <- penguins %>% filter(island == 'Dream' | year == 2009)

# create a ggplot chart of water temp vs crab size
#
ggplot(data = pie_crab, aes(x = water_temp, y = size)) + geom_point()


pie_sites <- pie_crab %>% filter(site %in% c('NIB', 'ZI', 'DB', 'JC'))
d
