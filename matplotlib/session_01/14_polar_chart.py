import pandas as pd
import matplotlib.pyplot as plt
import numpy as np

# Sample data
df = pd.DataFrame({'Theta': np.linspace(0, 2*np.pi, 100),
                   'R': np.abs(np.sin(np.linspace(0, 2*np.pi, 100)))})

plt.polar(df['Theta'], df['R'], color='purple')
plt.title('Polar Chart Example')
plt.show()
