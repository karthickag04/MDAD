import pandas as pd
import matplotlib.pyplot as plt

# Sample data
df = pd.DataFrame({
    'Category': ['A', 'B', 'C', 'D'],
    'Value1': [4, 7, 1, 8],
    'Value2': [5, 6, 2, 3]
})

plt.bar(df['Category'], df['Value1'], color='blue', label='Value 1')
plt.bar(df['Category'], df['Value2'], color='red', bottom=df['Value1'], label='Value 2')
plt.xlabel('Categories')
plt.ylabel('Values')
plt.title('Stacked Bar Chart Example')
plt.legend()
plt.show()
