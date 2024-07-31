import pandas as pd
import matplotlib.pyplot as plt

# Sample data
df = pd.DataFrame({'X': [1, 2, 3, 4, 5],
                   'Y1': [1, 2, 4, 8, 16],
                   'Y2': [0.5, 1, 2, 3, 5]})

plt.fill_between(df['X'], df['Y1'], color='skyblue', alpha=0.4, label='Y1')
plt.fill_between(df['X'], df['Y2'], color='orange', alpha=0.4, label='Y2')
plt.xlabel('X-axis')
plt.ylabel('Y-axis')
plt.title('Area Chart Example')
plt.legend()
plt.show()
