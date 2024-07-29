import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns
#install seaborn using pip install
# Sample data
df = pd.DataFrame({
    'X': [1, 2, 3, 4, 5],
    'Y': [10, 20, 30, 40, 50],
    'Z': [5, 25, 35, 45, 55]
})

# Create a 2D array for the heatmap
data = df.pivot("X", "Y", "Z")
sns.heatmap(data, annot=True, cmap="YlGnBu")
plt.title('Heatmap Example')
plt.show()
