import pandas as pd
import matplotlib.pyplot as plt

# Sample data
df = pd.DataFrame({'X': [1, 2, 3, 4, 5],
                   'Y': [10, 20, 25, 30, 35],
                   'Size': [100, 200, 300, 400, 500]})

plt.scatter(df['X'], df['Y'], s=df['Size'], alpha=0.5, c=df['Y'], cmap='viridis')
plt.xlabel('X-axis')
plt.ylabel('Y-axis')
plt.title('Bubble Chart Example')
plt.colorbar(label='Y value')
plt.show()
