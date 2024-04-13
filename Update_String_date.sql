select * from pizza_sales;

###Convert text to date format
update pizza_sales
 set order_date = case 
    when order_date like "%-%" then date_format(str_to_date(order_date,"%d-%m-%Y"),"%Y-%m-%d")
    else null
    end;
    
select order_date from pizza_sales;


###Modify column data type for orders to date
alter table pizza_sales
modify column order_date date;
