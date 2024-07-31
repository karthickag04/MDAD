import pandas as pd
import matplotlib.pyplot as plt

# Sample data
df = pd.DataFrame({'X': [1, 2, 3, 4, 5, 6, 7],
                   'Y': [1, 3, 2, 5, 4, 7, 6]})

plt.step(df['X'], df['Y'], where='mid', label='Mid-Step', color='green')
plt.xlabel('X-axis')
plt.ylabel('Y-axis')
plt.title('Step Chart Example')
plt.legend()
plt.show()
