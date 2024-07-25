import numpy as np

# Dataset: Product Name, Category, Price, Quantity, Rating
products = np.array([
    ['Laptop', 'Electronics', '999.99', '50', '4.5'],
    ['Smartphone', 'Electronics', '799.99', '200', '4.7'],
    ['Tablet', 'Electronics', '299.99', '150', '4.3'],
    ['Headphones', 'Accessories', '99.99', '300', '4.1'],
    ['Smartwatch', 'Accessories', '199.99', '100', '4.0'],
    ['Camera', 'Electronics', '499.99', '80', '4.6'],
    ['Printer', 'Office Supplies', '150.00', '75', '4.2'],
    ['Desk', 'Furniture', '120.00', '40', '4.4'],
    ['Chair', 'Furniture', '85.00', '120', '4.3'],
    ['Lamp', 'Furniture', '45.00', '200', '4.0']
])

# Tasks:
# 1. Extract the prices of all products and convert them to float.
# 2. Calculate the average price of the products.
# 3. Find the product with the highest price.
# 4. Calculate the total number of products in stock.
# 5. Find the name of the product with the lowest rating.
# 6. Calculate the average rating of the products.
# 7. Count the number of products with a price above $100.
# 8. Extract the names of products in the 'Electronics' category.
# 9. Find the median price of the products.
# 10. Sort the products by their ratings in descending order.
# 11. Determine if there are any products with the same price.
# 12. Extract the names and categories of products priced above $500.
# 13. Find the total number of 'Furniture' products in stock.
# 14. Calculate the variance in the prices of the products.
# 15. Extract the names of products with ratings higher than 4.5.
# 16. Determine the range (max - min) of the quantities in stock.
# 17. Find the products with prices less than $100.
# 18. Calculate the total value of the inventory (price * quantity).
# 19. Find the product with the highest stock.
# 20. Extract the names and ratings of 'Accessories' products.
# 21. Calculate the standard deviation of the product prices.
# 22. Identify products with a rating below the average rating.
# 23. Find the number of unique product categories.
# 24. Extract the product names and quantities in stock for 'Office Supplies'.
# 25. Determine if all products in the 'Furniture' category have a rating of 4.0 or higher.
# 26. Create a mask for products with prices between $100 and $500.
# 27. Extract the names of products that have a quantity less than 100.
# 28. Calculate the correlation between prices and ratings.
# 29. Find the category with the highest average rating.
# 30. Extract the names of products and double their prices.
