import pandas as pd
import matplotlib.pyplot as plt

# Sample data
df = pd.DataFrame({'X': [1, 2, 3, 4, 5], 'Y': [2, 3, 5, 7, 11], 'Size': [50, 100, 200, 300, 500]})

plt.scatter(df['X'], df['Y'], color='purple', label='Prime numbers', s=df['Size'])
plt.xlabel('X-axis')
plt.ylabel('Y-axis')
plt.title('Scatter Plot Example')
plt.legend()
plt.show()
