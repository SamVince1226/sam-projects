# Loading in the data and displaying the results
df <- read.csv("C:/Users/Owner/Downloads/sampleData.csv")
df2 <- read.csv("C:/USers/Owner/Downloads/sampleMetadata.csv")
library(ggplot2)
df
df2

# Retrieving and printing the column and row names for the dataframes
print(dimnames(df))
print(dimnames(df2))

# Creating/ modifying a new copy of df2 (sampleMetadata.csv)
updated_metadata <- df2[, 'SampleType'] <- 'tissue'
  colnames(df2)[colnames(df2) == 'SampleID'] <- 'SampleName'
df2

# Writing out the updated dataframe as a tab-delimited text file
write.table(df2, file = "C:/USers/Owner/Downloads/sampleMetadata.csv", sep = ".csv", row.names = FALSE, quote = FALSE)

# Printing out first 5 values for sample S_1 and last 8 for sample S_12
Sample1F5 <- sapply(df, function(x) head('12.67_487.1199n@pos', 5))
Sample12L8 <- sapply(df, function(x) tail('0.60_215.0557n@pos', 8))
print(Sample1F5)
print(Sample12L8)

# Making a loop to count rows in each data table
row_count <- row_count <- 0
  for (i in 1:nrow(df)) {row_count <- row_count + 1}
print(row_count)
row_count2 <- row_count2 <- 0
for (i in 1:nrow(df2)) {row_count2 <- row_count2 + 1}
print(row_count2)

# Saving the result as a vector
countingRows <- c(row_count, row_count2)
countingRows