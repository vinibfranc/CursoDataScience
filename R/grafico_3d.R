library(lattice)
cloud(decrease ~ rowpos * colpos, data=OrchardSprays)
cloud(decrease ~ rowpos * colpos, groups=treatment, data=OrchardSprays)