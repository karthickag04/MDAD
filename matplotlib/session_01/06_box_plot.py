import pandas as pd
import matplotlib.pyplot as plt

# Sample data
df = pd.DataFrame({
    'Set 1': [1, 2, 5, 7, 9],
    'Set 2': [2, 3, 5, 6, 8],
    'Set 3': [1, 4, 6, 8, 10]
})

plt.boxplot([df['Set 1'], df['Set 2'], df['Set 3']], labels=['Set 1', 'Set 2', 'Set 3'], notch=True, vert=True)
plt.xlabel('Data Sets')
plt.ylabel('Values')
plt.title('Box Plot Example')
plt.show()
