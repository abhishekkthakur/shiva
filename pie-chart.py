import numpy as np
import matplotlib.pyplot as plt
import pandas as pd

raw_data = {'officer_name': ['Metal', 'Ceramic', 'Glass', 'Polymer', 'Semi-conductor'],
        'jan_arrests': [1, 1, 1, 1, 1],
        'feb_arrests': [1, 1, 1, 1, 1],
        'march_arrests': [1, 1, 1, 1, 1]}
df = pd.DataFrame(raw_data, columns = ['officer_name', 'jan_arrests', 'feb_arrests', 'march_arrests'])
df['total_arrests'] = df['jan_arrests'] + df['feb_arrests'] + df['march_arrests']
colors = ["#E13F29", "#D69A80", "#D63B59", "#AE5552", "#CB5C3B", "#EB8076", "#96624E"]

# Create a pie chart
plt.pie(
    # using data total)arrests
    df['total_arrests'],
    # with the labels being officer names
    labels=df['officer_name'],
    # with no shadows
    shadow=False,
    # with colors
    colors=colors,
    # with one slide exploded out
    #explode=(0, 0, 0, 0, 0.15),
    # with the start angle at 90%
    startangle=90,
    # with the percent listed as a fraction
    #autopct='%1.1f%%',
    )

# View the plot drop above
plt.axis('equal')

# View the plot
plt.tight_layout()
plt.savefig('Correct.png', dpi = 300)
