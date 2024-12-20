# Check colnames for each CHAR file
# Ensure columns names for both bugs and fish match MBSStools::qc_taxa function
# 2024-12-20
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# Bugs ----
## column names ----
testthat::test_that("MBSS, colnames, bugs", {
  # data
  df_char <- read.csv(file.path("data",
                                     "CHAR_Bugs.csv"))
  # col names, MBSStools::qc_taxa
  col_mt <- c("Taxon", 
              "Phylum", 
              "Class", 
              "Order", 
              "Family", 
              "Genus",
              "Other_Taxa", 
              "Tribe", 
              "FFG",
              "FAM_TV",
              "Habit",
              "FinalTolVal07", 
              "Comment")
  # col names, data
  col_char <- colnames(df_char)
  
  # # show mismatches
  # print(paste0("Names missing from CHAR (bugs):"))
  # col_mt[!col_mt %in% col_char]

  # test
  testthat::expect_contains(col_char, col_mt)
  
})## Test ~ colnames, bugs

testthat::test_that("MBSS, colnames, fish", {
  # data
  df_char <- read.csv(file.path("data",
                                "CHAR_Fish.csv"))
  # col names, MBSStools::qc_taxa
  col_mt <- c("SPECIES",
              "TYPE", 
              "PTOLR",
              "NATIVE", 
              "TROPHIC", 
              "SILT",
              "PIRHALLA",
              "DATE.ADDED", 
              "REASON",
              "SOURCE", 
              "FAM", 
              "GENUS",
              "SP_SCI", 
              "IN_KEY", 
              "APPROX_ID")
  # col names, data
  col_char <- colnames(df_char)
  
  # # show mismatches
  # print(paste0("Names missing from CHAR (fish):"))
  # col_mt[!col_mt %in% col_char]
  
  # test
  testthat::expect_contains(col_char, col_mt)
  
})## Test ~ colnames, fish
