# Import necessary libraries
import pandas as pd
import numpy as np

# Task 1: Student Scores
# Dataset: [85, 90, 78, 93, 88, 77, 85, 91, 84, 95]
student_scores = [85, 90, 78, 93, 88, 77, 85, 91, 84, 95]
df_student_scores = pd.DataFrame(student_scores, columns=['Score'])

# Task 2: Monthly Sales
# Dataset: [15000, 18000, 17000, 16000, 17500, 20000, 19000, 21000, 19500, 18500, 22000, 20500]
monthly_sales = [15000, 18000, 17000, 16000, 17500, 20000, 19000, 21000, 19500, 18500, 22000, 20500]
df_monthly_sales = pd.DataFrame(monthly_sales, columns=['Sales'])

# Task 3: Heights of Students
# Dataset: [170, 165, 172, 160, 180, 158, 175, 162, 168, 155]
heights_of_students = [170, 165, 172, 160, 180, 158, 175, 162, 168, 155]
df_heights_of_students = pd.DataFrame(heights_of_students, columns=['Height'])

# Task 4: Daily Temperatures
# Dataset: [22, 25, 21, 23, 24, 26, 20, 27, 22, 25, 23, 26, 21, 24, 25, 22, 27, 21, 26, 24, 25, 23, 24, 26, 22, 25, 21, 27, 23, 26]
daily_temperatures = [22, 25, 21, 23, 24, 26, 20, 27, 22, 25, 23, 26, 21, 24, 25, 22, 27, 21, 26, 24, 25, 23, 24, 26, 22, 25, 21, 27, 23, 26]
df_daily_temperatures = pd.DataFrame(daily_temperatures, columns=['Temperature'])

# Task 5: Product Ratings
# Dataset: [4.5, 4.7, 4.2, 4.8, 4.3, 4.6, 4.1, 4.9, 4.4, 4.7]
product_ratings = [4.5, 4.7, 4.2, 4.8, 4.3, 4.6, 4.1, 4.9, 4.4, 4.7]
df_product_ratings = pd.DataFrame(product_ratings, columns=['Rating'])

# Task 6: Exam Scores
# Dataset: [76, 85, 91, 88, 77, 92, 84, 79, 81, 87]
exam_scores = [76, 85, 91, 88, 77, 92, 84, 79, 81, 87]
df_exam_scores = pd.DataFrame(exam_scores, columns=['Score'])

# Task 7: Customer Ages
# Dataset: [25, 32, 40, 29, 35, 42, 31, 30, 28, 33]
customer_ages = [25, 32, 40, 29, 35, 42, 31, 30, 28, 33]
df_customer_ages = pd.DataFrame(customer_ages, columns=['Age'])

# Task 8: House Prices
# Dataset: [250000, 300000, 275000, 320000, 310000, 280000, 270000, 260000, 290000, 305000]
house_prices = [250000, 300000, 275000, 320000, 310000, 280000, 270000, 260000, 290000, 305000]
df_house_prices = pd.DataFrame(house_prices, columns=['Price'])

# Task 9: Weekly Sales
# Dataset: [4000, 4500, 4200, 4300, 4100, 4700, 4400, 4600, 4800, 4250]
weekly_sales = [4000, 4500, 4200, 4300, 4100, 4700, 4400, 4600, 4800, 4250]
df_weekly_sales = pd.DataFrame(weekly_sales, columns=['Sales'])

# Task 10: Employee Salaries
# Dataset: [45000, 48000, 47000, 50000, 46000, 49000, 51000, 47000, 49500, 50500]
employee_salaries = [45000, 48000, 47000, 50000, 46000, 49000, 51000, 47000, 49500, 50500]
df_employee_salaries = pd.DataFrame(employee_salaries, columns=['Salary'])

# Task 11: Daily Steps
# Dataset: [5000, 7500, 6200, 6700, 7200, 8000, 7600, 8100, 6900, 7300, 7100, 7700, 7900, 7300, 7500, 7400, 8000, 6600, 7800, 7200]
daily_steps = [5000, 7500, 6200, 6700, 7200, 8000, 7600, 8100, 6900, 7300, 7100, 7700, 7900, 7300, 7500, 7400, 8000, 6600, 7800, 7200]
df_daily_steps = pd.DataFrame(daily_steps, columns=['Steps'])

# Task 12: Product Weights
# Dataset: [2.5, 3.1, 2.8, 3.2, 3.0, 2.7, 3.3, 2.9, 3.4, 2.6]
product_weights = [2.5, 3.1, 2.8, 3.2, 3.0, 2.7, 3.3, 2.9, 3.4, 2.6]
df_product_weights = pd.DataFrame(product_weights, columns=['Weight'])

# Task 13: Movie Ratings
# Dataset: [8.5, 9.0, 7.8, 9.3, 8.8, 7.7, 8.5, 9.1, 8.4, 9.5]
movie_ratings = [8.5, 9.0, 7.8, 9.3, 8.8, 7.7, 8.5, 9.1, 8.4, 9.5]
df_movie_ratings = pd.DataFrame(movie_ratings, columns=['Rating'])

# Task 14: Annual Rainfall
# Dataset: [1200, 1400, 1300, 1250, 1350, 1500, 1450, 1600, 1550, 1650]
annual_rainfall = [1200, 1400, 1300, 1250, 1350, 1500, 1450, 1600, 1550, 1650]
df_annual_rainfall = pd.DataFrame(annual_rainfall, columns=['Rainfall'])

# Task 15: Test Scores
# Dataset: [78, 85, 88, 92, 80, 86, 84, 79, 83, 87]
test_scores = [78, 85, 88, 92, 80, 86, 84, 79, 83, 87]
df_test_scores = pd.DataFrame(test_scores, columns=['Score'])

# Task 16: Monthly Expenses
# Dataset: [2000, 2200, 2100, 2300, 2250, 2400, 2350, 2500, 2450, 2600]
monthly_expenses = [2000, 2200, 2100, 2300, 2250, 2400, 2350, 2500, 2450, 2600]
df_monthly_expenses = pd.DataFrame(monthly_expenses, columns=['Expense'])

# Task 17: Stock Prices
# Dataset: [150, 155, 160, 158, 162, 165, 170, 168, 172, 175]
stock_prices = [150, 155, 160, 158, 162, 165, 170, 168, 172, 175]
df_stock_prices = pd.DataFrame(stock_prices, columns=['Price'])

# Task 18: Product Lifetimes
# Dataset: [3, 4, 5, 3, 4, 6, 5, 4, 5, 4]
product_lifetimes = [3, 4, 5, 3, 4, 6, 5, 4, 5, 4]
df_product_lifetimes = pd.DataFrame(product_lifetimes, columns=['Lifetime'])

# Task 19: Internet Speeds
# Dataset: [50, 60, 55, 65, 70, 68, 62, 64, 66, 58]
internet_speeds = [50, 60, 55, 65, 70, 68, 62, 64, 66, 58]
df_internet_speeds = pd.DataFrame(internet_speeds, columns=['Speed'])

# Task 20: Travel Distances
# Dataset: [120, 150, 140, 130, 160, 155, 145, 135, 125, 170]
travel_distances = [120, 150, 140, 130, 160, 155, 145, 135, 125, 170]
df_travel_distances = pd.DataFrame(travel_distances, columns=['Distance'])

# Function to calculate range, IQR, variance, and standard deviation
def calculate_statistics(df, column):
    range_value = df[column].max() - df[column].min()
    iqr_value = df[column].quantile(0.75) - df[column].quantile(0.25)
    variance_value = df[column].var()
    std_dev_value = df[column].std()
    return range_value, iqr_value, variance_value, std_dev_value

# Calculating and printing statistics for each dataset
datasets = [
    (df_student_scores, 'Score'),
    (df_monthly_sales, 'Sales'),
    (df_heights_of_students, 'Height'),
    (df_daily_temperatures, 'Temperature'),
    (df_product_ratings, 'Rating'),
    (df_exam_scores, 'Score'),
    (df_customer_ages, 'Age'),
    (df_house_prices, 'Price'),
    (df_weekly_sales, 'Sales'),
    (df_employee_salaries, 'Salary'),
    (df_daily_steps, 'Steps'),
    (df_product_weights, 'Weight'),
    (df_movie_ratings, 'Rating'),
    (df_annual_rainfall, 'Rainfall'),
    (df_test_scores, 'Score'),
    (df_monthly_expenses, 'Expense'),
    (df_stock_prices, 'Price'),
    (df_product_lifetimes, 'Lifetime'),
    (df_internet_speeds, 'Speed'),
    (df_travel_distances, 'Distance')
]

for df, column in datasets:
    range_value, iqr_value, variance_value, std_dev_value = calculate_statistics(df, column)
    print(f"Dataset: {column}")
    print(f"Range: {range_value}")
    print(f"IQR: {iqr_value}")
    print(f"Variance: {variance_value}")
    print(f"Standard Deviation: {std_dev_value}")
    print("")

