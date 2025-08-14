# Loading in the data and displaying the results
# install.packages("here")
# library(here)
df <- read.csv("./sampleData.csv")
df2 <- read.csv("./sampleMetadata.csv")
library(ggplot2)
df
df2

# Retrieving and printing the column and row names for the dataframes
print(dimnames(df))
print(dimnames(df2))

rownames(df)
colnames(df)
rownames(df2)
colnames(df2)

# Creating/ modifying a new copy of df2 (sampleMetadata.csv)
# updated_metadata <- df2[, 'SampleType'] <- 'tissue'
# colnames(df2)[colnames(df2) == 'SampleID'] <- 'SampleName'
# updated_metadata

updated_metadata = df2
all.equal(updated_metadata, df2)
updated_metadata$SampleID
updated_metadata[,"SampleID"]
colnames(updated_metadata)

#new column
updated_metadata$DogNames = rep("Dolly", nrow(updated_metadata))
updated_metadata$SampleType = rep("tissue", nrow(updated_metadata))
updated_metadata

# Writing out the updated dataframe as a tab-delimited text file
write.table(updated_metadata, file = "./sampleMetadata_updated.csv", sep = ",", row.names = FALSE, quote = FALSE)
write.table(updated_metadata, file = "./sampleMetadata_updated.txt", sep = "\t", row.names = FALSE, quote = FALSE)

# Printing out first 5 values for sample S_1 and last 8 for sample S_12
Sample1F5 <- head(df[,"S_1"], 5)
Sample12L8 <- tail(df[,"S_12"], 8)
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