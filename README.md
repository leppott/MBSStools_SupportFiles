# MBSStools_SupportFiles
For calculation of the Maryland Biological Stream Survery (MBSS) biological indices master taxa lists (with phylogenetic and autecological information) is required.  These files along with GIS data of the MBSS strata will be stored in this GitHub repository.

## Master Taxa
Master taxa lists for MBSS; fish and benthic macroinvertebrates.

These files are intended to be the "official" and "current" versions for use with the R package `MBSStools` (https://leppott.github.io/MBSStools/) to calculate Fish and Benthic Macroinvertebrate IBIs.


Last Update:

* Benthos

    + Version = CHAR15
    
    + Date = 2019-11-14
    
* Fish

    + Version = x
    
    + Date = 2019-04-16

Example code below to download the data files into R as data frames.

The files will always have the same names so any code referencing the files will always get the most recent files.

```
# Packages
library(httr)
library(readxl)

# Benthos
url_mt_bugs <- "https://github.com/leppott/MBSStools_SupportFiles/raw/master/Data/CHAR_Bugs.xlsx"
GET(url_mt_bugs, write_disk(temp_bugs <- tempfile(fileext = ".xlsx")))
df_mt_bugs <- as.data.frame(read_excel(temp_bugs, guess_max = 10^3))

# Fish
url_mt_fish <- "https://github.com/leppott/MBSStools_SupportFiles/raw/master/Data/CHAR_Fish.xlsx"
GET(url_mt_fish, write_disk(temp_fish <- tempfile(fileext = ".xlsx")))
df_mt_fish <- as.data.frame(read_excel(temp_fish, guess_max = 10^3))
```
## GIS Files
GIS files (strata polygons and coldwater streams).

Files are saved in a single zip file for easier transfer (1 file versus many files).

* MD_Boundary_County_Detailed

    + Version = 2017-05-03
    
* MD_Coast_Hydrology

    + Version = 2017-05-03
    
* MD_State_Boundary

    + Version = 2017-05-03

```
# Code to access the files
url_gis <- "https://github.com/leppott/MBSStools_SupportFiles/raw/master/Data/MD_GIS.zip"
GET(url_gis, write_disk(temp_bugs <- tempfile(fileext = ".zip")))
# Copy to new location (file.choose) make interactive.

# Potentially add code to generate strata from station coordinates (lat-long or NAD83?)
```

# Badges
[![Maintenance](https://img.shields.io/badge/Maintained%3F-yes-green.svg)](https://GitHub.com/leppott/MBSS_MasterTaxa/graphs/commit-activity)
[![GitHub issues](https://img.shields.io/github/issues/leppott/MBSS_MasterTaxa.svg)](https://GitHub.com/leppott/MBSS_MasterTaxa/issues/)
