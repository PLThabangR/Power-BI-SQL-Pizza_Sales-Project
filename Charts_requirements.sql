select * from pizza_sales;
##Filtering total sales based on months
select pizza_category as category ,round(sum(total_price),2) as Total_sales, round(sum(total_price)*100/(select sum(total_price) from pizza_sales where month(order_date) = 1 ),2) as sale_percentage from pizza_sales
where month(order_date) = 1
group by category; 