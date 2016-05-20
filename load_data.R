library(dplyr)
library(myrwaR)
ch <- db_connect('MysticDB_20160309.accdb')

df <- db_results(ch)
df <- filter(df, SampleTypeID=="S",
             ProjectID %in% c("BASE", "BHWQM", "CSORWM"),
             CharacteristicID %in% c("ECOLI", "ENT")) %>%
  droplevels

loc <- db_table(ch, "Location")
loc <- filter(loc, ID %in% unique(df$LocationID))

write.csv(df, file="db_bacteria.csv", row.names=FALSE)
write.csv(loc, file="db_locations.csv", row.names=FALSE)

close(ch)
