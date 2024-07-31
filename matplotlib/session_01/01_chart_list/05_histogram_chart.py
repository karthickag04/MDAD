import pandas as pd
import matplotlib.pyplot as plt

# Sample data
df = pd.DataFrame({'Data': [1, 2, 2, 3, 3, 3, 4, 4, 4, 4, 5, 5, 5, 5, 5]})

plt.hist(df['Data'], bins=5, color='orange', label='Frequency')
plt.xlabel('Data')
plt.ylabel('Frequency')
plt.title('Histogram Example')
plt.legend()
plt.show()
