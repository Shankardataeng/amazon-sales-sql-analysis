create table amazon_sale(

order_id varchar primary key,
sale_Date date,
Product varchar(150),
Category varchar(150),
Price int,
Quantity int,
Total_Sales int,
Customer_Name varchar (50),
Customer_Location varchar(100),
Payment_Method varchar(50),
Status varchar(50)
);

copy amazon_sale from 'D:/Project/amazon_sales_data 2025.csv' csv header;

select * from amazon_sale limit 3;

select * from amazon_sale where 
order_id is null or
sale_Date is null or
Product is null or
Category  is null or
Price is null or
Quantity is null or
Total_Sales is null or
Customer_Name is null or
Customer_Location is null or
Payment_Method is null or
Status is null
;

update amazon_sale set status = 'Unkown' where status is null;

select status, coalesce(status,'Unknown') as status_null from amazon_sale;


--Top 5 Products by Total Sales
select product, sum(total_sales) as total from amazon_sale group by product order by total desc limit 5;
--?? Monthly Sales Trend
select date_trunc('month', sale_date) as month, sum(total_sales) as total_sale from amazon_sale group by month order by month;
--?? Sales by Location
select Customer_Location, sum(total_sales) as total from amazon_sale group by Customer_Location order by total desc limit 5;
--?? Sales by Category and Payment Method
select category, Payment_Method, sum(total_sales) as total from amazon_sale group by category, payment_method order by total desc limit 5;
