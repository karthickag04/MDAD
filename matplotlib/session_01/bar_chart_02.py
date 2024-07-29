import pandas as pd
import matplotlib.pyplot as plt

# Sample data
df = pd.DataFrame({'Category': ['A', 'B', 'C', 'D'], 'Value': [3, 7, 5, 2]})

plt.bar(df['Category'], df['Value'], color='green', label='Values')
plt.xlabel('Categories')
plt.ylabel('Values')
plt.title('Bar Chart Example')
plt.legend()
plt.show()
