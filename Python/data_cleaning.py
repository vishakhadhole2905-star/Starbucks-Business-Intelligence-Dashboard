import pandas as pd

df = pd.read_csv("starbucks.csv")

df.drop_duplicates(inplace=True)

df.fillna(0, inplace=True)

df.to_csv("cleaned_starbucks.csv", index=False)