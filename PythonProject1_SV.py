# Loading in files, assigning variables, inspecting dataframes
import pandas as pd
df = pd.read_csv('C:/Users/Owner/Downloads/sampleData.csv')
df2 = pd.read_csv('C:/Users/Owner/Downloads/sampleMetadata.csv')
print(df)
print(df2)

# Checking dataframe dimensions
df2_r_count = len(df.index)
df2_c_count = len(df.columns)
print(f"Rows: {df2_c_count}, Columns: {df2_r_count}")
df2_r_count = len(df2.index)
df2_c_count = len(df2.columns)
print(f"Rows: {df2_c_count}, Columns: {df2_r_count}")

# Creating an updated copy of df2
df2_updated = df2['SampleType'] = 'tissue'
df2.rename(columns={'SampleID': 'SampleName'}, inplace=True)
print(df2_updated)

# Writing out df2_updated as a tab-delimited text file
df2.to_csv(sep=str(','))

# Printing out various values from df
S1_row_values = df.iloc[0, :5]
S12_row_values = df.iloc[11, :-8]
print(S1_row_values)
print(S12_row_values)

# Writing a for-loop for counting rows in the data tables and saving the result as a vector
row_count = 0
for _ in df.iterrows():
    row_count += 1
print(f"There are {row_count} ""rows in sampleData.csv!")
row_count2 = 0
for _ in df2.iterrows():
    row_count2 += 1
print(f"There are {row_count2} ""rows in sampleMetadata.csv!")
vector = pd.Series([row_count, row_count2])
print(vector)