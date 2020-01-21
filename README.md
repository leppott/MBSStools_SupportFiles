# MBSS_MasterTaxa
Master taxa lists for Maryland Biological Stream Survery (MBSS); fish and benthic macroinvertebrates.

These files are intended to be the "official" and "current" versions for use with the R package `MBSStools` (https://leppott.github.io/MBSStools/) to calculate Fish and Benthic Macroinvertebrate IBIs.

Example code below to download the data files into R as data frames.

```
# Packages
library(httr)
library(readxl)

# Benthos
url_mt_bugs <- "https://github.com/leppott/MBSS_MasterTaxa/raw/master/Data/CHAR_Bugs.xlsx"
GET(url_mt_bugs, write_disk(temp_bugs <- tempfile(fileext = ".xlsx")))
df_mt_bugs <- as.data.frame(read_excel(temp_bugs, guess_max = 10^3))

# Fish
url_mt_fish <- "https://github.com/leppott/MBSS_MasterTaxa/raw/master/Data/CHAR_Fish.xlsx"
GET(url_mt_fish, write_disk(temp_fish <- tempfile(fileext = ".xlsx")))
df_mt_fish <- as.data.frame(read_excel(temp_fish, guess_max = 10^3))
```

# Badges
[![Maintenance](https://img.shields.io/badge/Maintained%3F-yes-green.svg)](https://GitHub.com/leppott/MBSS_MasterTaxa/graphs/commit-activity)
[![GitHub issues](https://img.shields.io/github/issues/leppott/MBSS_MasterTaxa.svg)](https://GitHub.com/leppott/MBSS_MasterTaxa/issues/)
