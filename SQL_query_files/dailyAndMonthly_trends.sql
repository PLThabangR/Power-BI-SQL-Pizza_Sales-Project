select * from pizza_sales;
##Daily and monthly trend
#Find how many order for each day using day name function
select dayname(order_date) as Order_day, count(distinct order_id) as Total_orders from pizza_sales
group by Order_day;

##Monthly trend
select monthname(order_date) as Order_month,  count(distinct order_id) as Total_orders from pizza_sales
group by Order_month
order by Order_month desc;

