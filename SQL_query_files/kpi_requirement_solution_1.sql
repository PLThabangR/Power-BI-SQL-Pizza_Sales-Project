create database pizza_hub;
use pizza_hub;
describe pizza_sales;
select * from pizza_sales;
select  round(sum(total_price),2) as Total_price from pizza_sales;

#Calculating average order
Select  round(sum(total_price)/ count(distinct order_id),2) as average_order_value from pizza_sales;

# Total Pizza Sold
Select sum(quantity) as Quantity_of_pizza_Sold from pizza_sales;

#Total number of orders per customer
Select count(distinct order_id) as Total_pizza_orders from pizza_sales;

#Average pizza per order
select sum(quantity)/count(distinct order_id) as Averga_pizza_per_order from pizza_sales;
