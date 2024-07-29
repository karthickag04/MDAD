import pandas as pd
import matplotlib.pyplot as plt

# Sample data
df = pd.DataFrame({'X': [1, 2, 3, 4, 5],
                   'Y': [2, 3, 5, 7, 11],
                   'Error': [0.5, 0.3, 0.4, 0.2, 0.6]})

plt.errorbar(df['X'], df['Y'], yerr=df['Error'], fmt='o', ecolor='red', capsize=5, label='Data with error')
plt.xlabel('X-axis')
plt.ylabel('Y-axis')
plt.title('Error Bar Chart Example')
plt.legend()
plt.show()
