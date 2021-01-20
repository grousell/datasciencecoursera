
# Load Data ---------------------------------------------------------------

df <- read.csv ("hw1_data.csv", 
                stringsAsFactors = FALSE)

# Extract first two rows
df[1:2, ]

# Extract Last two rows
df[152:153, ]

# Value of Ozone in 47th row

df[47, ]

table (is.na (df$Ozone))

mean (df$Ozone, na.rm = TRUE)

# Extract the subset of rows of the data frame where Ozone values are above 31 
# and Temp values are above 90. What is the mean of Solar.R in this subset?

new_df <- subset (df, Ozone > 31 & Temp > 90)

mean (new_df$Solar.R)

# What is the mean of "Temp" when "Month" is equal to 6? 

new_df <- subset (df, Month == 6)

mean (new_df$Temp)

# What was the maximum ozone value in the month of May (i.e. Month is equal to 5)?

new_df <- subset(df, Month == 5)

max (new_df$Ozone, na.rm = TRUE)