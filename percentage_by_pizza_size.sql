select * from pizza_sales;

##Filtering pizza sale and percentage by pizza size
select pizza_size as pizza_size ,round(sum(total_price),2) as Total_sales, round(sum(total_price)*100/(select sum(total_price) from pizza_sales),2) as sale_percentage from pizza_sales
group by pizza_size
order by sale_percentage;

##Best selling pizza
Select pizza_name ,round(sum(total_price),2) as Total_price from pizza_sales
group by pizza_name 
order by Total_price desc
limit 5;

