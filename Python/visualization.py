import matplotlib.pyplot as plt

df.groupby("Beverage_category")["Calories"].mean().plot(kind="bar")

plt.title("Average Calories by Category")
plt.show()