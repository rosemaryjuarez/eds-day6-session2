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


sites <- c('CC', 'BB', 'PIE')

pie_sites_2 <- pie_crab %>% filter(site %in% sites)
## DONT USE DOUBLW ==, it will look for vectors but IN ORDER
## %in% is a non-order specific thing

#create a subset using the %in% operator that includes sites PIE, ZI, NIB, BB, and CC
sites2 <- c('PIE', 'ZI', 'NIB', 'BB', 'CC')

pie_crab %>% filter(site %in% sites2)


# exclude filter statements
#
#  != (asks is this Not equal to that value?)

exclude_zi <- pie_crab %>% filter(site!= 'ZI')

# what if i want to exclude sites 'BB', 'CC', 'PIE'

exclude_bb_cc_pie <- pie_crab %>% filter(!site %in% c('BB', 'CC', 'PIE'))

#create a subset from pie_crab that only contains observations from NIB, CC, and ZI, for crabs with carapace size exceeeding 13


crabs_large <- pie_crab %>% filter(site %in% c('NIB','CC', 'ZI'), size > 13)


# ----select columns -----
# select individual columns by name, separate them by a comma
crabs_subset <- pie_crab %>% select(latitude, size, water_temp)
#select a range of column using:
crab_subset2 <- pie_crab %>% select(site:air_temp)
view(crab_subset2)


# select a range and an indivudual column
crab_subset3 <- pie_crab %>% select(date:water_temp, name)
pie_crab %>% select(name, water_temp, size)
