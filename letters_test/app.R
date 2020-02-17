devtools::install_github("MayaGans/phishr")
library(phishr)
phishnet_key <- "7BA06832CEA80BE2900C"
phishin_key

phishr::pn_get_setlist(phishnet_key, "1999-12-31")
phishr::pn_get_show_notes(phishnet_key, "1999-12-31")
phishr::pn_get_show_rating(phishnet_key, "1999-12-31")

pi_get_dates(phishin_key, "1999-12-31")
pi_get_eras(phishin_key, 1)

pi_get_dates(phishin_key, "12-31")


# Tutorial where this is needed
pi_get_tags(phishin_key)

#
test <- pi_get_tours(phishin_key)

# How would you use this? How do you first find the track ID?
test <- pi_get_shows(phishin_key, "1999-12-31")
# Now I can use ID 733 to get 
pi_get_tracks(phishin_key, 8)

possum <- pi_get_songs(phishin_key, "Possum")

pi_get_years(phishin_key, 1999)
tt <- pi_get_venues(phishin_key, "Dick's Sporting Goods Park")

pi_get_random_show(phishin_key)