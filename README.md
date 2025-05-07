# Amazon Sales SQL Analysis

## Project Overview
This project analyzes a dataset of 250 Amazon sales records, focusing on key insights like top-selling products, sales trends, and customer locations.

## Dataset
The dataset contains the following columns:
- `Order ID`: Unique identifier for the order
- `Sale Date`: The date of the sale
- `Product`: Product name
- `Category`: Category of the product
- `Price`: Price of the product
- `Quantity`: Quantity sold
- `Total Sales`: Total value of the sale
- `Customer Name`: Name of the customer
- `Customer Location`: Location of the customer
- `Payment Method`: Method of payment
- `Status`: Status of the order (completed, pending, etc.)

## SQL Queries
The following queries were used to analyze the data:
1. **Top 5 Products by Total Sales**: Query to identify the top 5 products based on total sales.
2. **Monthly Sales Trend**: Query to find sales trends over time, grouped by month.
3. **Sales by Location**: Query to identify which locations have the highest sales.
4. **Sales by Category and Payment Method**: Query to find sales breakdown by category and payment method.

## How to Run
1. Import the `amazon_sales.csv` file into your PostgreSQL database.
2. Execute the SQL queries in the provided `.sql` file to analyze the data.

## License
This project is licensed under the MIT License - see the https://www.kaggle.com/datasets/zahidmughal2343/amazon-sales-2025 file for details.
