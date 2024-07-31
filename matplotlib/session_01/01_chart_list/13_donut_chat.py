import pandas as pd
import matplotlib.pyplot as plt

# Sample data
df = pd.DataFrame({'Group': ['Group 1', 'Group 2', 'Group 3', 'Group 4'],
                   'Size': [15, 30, 45, 10]})

plt.pie(df['Size'], labels=df['Group'], autopct='%1.1f%%', startangle=140, wedgeprops=dict(width=0.4))
plt.title('Donut Chart Example')
plt.show()
