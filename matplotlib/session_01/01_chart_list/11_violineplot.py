import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns

#you need to install seaborn using pip install

# Sample data
df = pd.DataFrame({
    'Category': ['A']*50 + ['B']*50 + ['C']*50,
    'Values': list(range(50)) + list(range(20, 70)) + list(range(10, 60))
})

sns.violinplot(x='Category', y='Values', data=df, palette="muted")
plt.xlabel('Category')
plt.ylabel('Values')
plt.title('Violin Plot Example')
plt.show()
