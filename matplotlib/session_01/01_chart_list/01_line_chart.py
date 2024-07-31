import pandas as pd
import matplotlib.pyplot as plt

# Sample data
df = pd.DataFrame({'X': [1, 2, 3, 4, 5], 'Y': [2, 3, 5, 7, 11]})

plt.plot(df['X'], df['Y'], color='blue', label='Prime numbers', linestyle='-')
plt.xlabel('X-axis')
plt.ylabel('Y-axis')
plt.title('Line Chart Example')
plt.legend()
plt.show()
