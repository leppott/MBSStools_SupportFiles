# MBSStools_SupportFiles
For calculation of the Maryland Biological Stream Survery (MBSS) biological indices master taxa lists (with phylogenetic and autecological information) is required.  These files along with GIS data of the MBSS strata will be stored in this GitHub repository.

## Master Taxa
Master taxa lists for MBSS; fish and benthic macroinvertebrates.

These files are intended to be the "official" and "current" versions for use with the R package `MBSStools` (https://leppott.github.io/MBSStools/) to calculate Fish and Benthic Macroinvertebrate IBIs.

Additions to the files can be........


|File Name      |Description              | Version/Last Revised|
|:--------------|:------------------------|:-------------------:|
|CHAR_Bugs.xlsx |Master taxa list for BIBI|2019-11-14           |
|CHAR_Fish.xlsx |Master taxa list for FIBI|2019-04-16           |


The files will always have the same names so any code referencing the files will always get the most recent files.

The files can be retrieved as CSV or XLSX.  The CSV file imports with a single line of code.  Whereas, the Excel file requires two packages as readxl::read_excel cannot read from a URL.  So one package downloads the file and the second reads the file.

Example code below to read the CSV files into R.

```
# Benthos
url_mt_bugs <- "https://github.com/leppott/MBSStools_SupportFiles/raw/master/Data/CHAR_Bugs.csv"
df_mt_bugs <- read.csv(url_mt_bugs)

# Fish
url_mt_fish <- "https://github.com/leppott/MBSStools_SupportFiles/raw/master/Data/CHAR_Fish.csv"
df_mt_fish<- read.csv(url_mt_fish)
```

Example code below to download the data files as Excel and read them into R.

```
# Packages
library(httr)
library(readxl)

# Benthos
url_mt_bugs <- "https://github.com/leppott/MBSStools_SupportFiles/raw/master/Data/CHAR_Bugs.xlsx"
GET(url_mt_bugs, write_disk(temp_bugs <- tempfile(fileext = ".xlsx")))
df_mt_bugs <- read_excel(temp_bugs, guess_max = 10^3)

# Fish
url_mt_fish <- "https://github.com/leppott/MBSStools_SupportFiles/raw/master/Data/CHAR_Fish.xlsx"
GET(url_mt_fish, write_disk(temp_fish <- tempfile(fileext = ".xlsx")))
df_mt_fish <- read_excel(temp_fish, guess_max = 10^3)
```

## GIS Files
GIS files (strata polygons and coldwater streams).

Files are saved in a single zip file for easier transfer (1 file versus many files) and smaller (15.1 MB vs. 26.7 MB).


|File Name                  |Description           | Version/Last Revised|
|:--------------------------|:---------------------|:-------------------:|
|mbss_strata                |Regions for BIBI      |2020-04-20           |
|mbss_strata_coldstreams    |Regions for FIBI      |2020-04-20           |
|MD_Boundary_County_Detailed|Maryland Counties     |2017-05-03           |
|MD_Coast_Hydrology         |Maryland Coastline    |2017-05-03           |
|MD_State_Boundary          |Maryland State Outline|2017-05-03           |
    
Example code below to download the zip file and unzip to a user specified directory.

```
# Packages
library(httr)
library(tcltk)

# Download GIS files
url_gis <- "https://github.com/leppott/MBSStools_SupportFiles/raw/master/Data/MBSS_GIS.zip"
GET(url_gis, write_disk(temp_gis <- tempfile(fileext = ".zip")))
# Unzip to user specified folder (Windows Only)
unzip(temp_gis, exdir = tk_choose.dir())
# Alternativel, unzip to current working directory
# unzip(temp_gis, exdir = ".")
```

# File Updates
Updates to the taxa list are performed by MBSS staff and are on an "as needed" basis.

If you have taxa in your samples that do no match the master taxa list email MBSS staff with names, locations (stream name and lat/long), and dates.

# Badges
[![Maintenance](https://img.shields.io/badge/Maintained%3F-yes-green.svg)](https://GitHub.com/leppott/MBSS_MasterTaxa/graphs/commit-activity)
[![GitHub issues](https://img.shields.io/github/issues/leppott/MBSS_MasterTaxa.svg)](https://GitHub.com/leppott/MBSS_MasterTaxa/issues/)
