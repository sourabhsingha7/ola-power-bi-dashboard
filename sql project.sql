create database project;
use project;
 #1. Retrieve all successful bookings:
 create view Successful_Bookings as
 select * from ola
 Where Booking_Status = 'success';
 
 #1. Retrieve all successful bookings:
 select * from Successful_Bookings;
 
 
 #2. Find the average ride distance for each vehicle type:
 create view ride_distance_for_each_vehicle as
 select Vehicle_Type , avg(Ride_Distance)
 as avg_Distance from ola
 GROUP BY Vehicle_Type;
 
  
 #2. Find the average ride distance for each vehicle type:
 select * from ride_distance_for_each_vehicle;
 
 #3. Get the total number of cancelled rides by customers:
 create view cancelled_rides_by_customers as
 select count(*) from ola
 where Booking_Status = 'canceled by customer';
 
 #3. Get the total number of cancelled rides by customers:
 select * from cancelled_rides_by_customers;
 
 #4. List the top 5 customers who booked the highest number of rides:
 create view top_5_customers_who_booked_the_highest_number_of_rides as
 select Customer_Id , count(Booking_Id) as total_rides
  from ola
  group by Customer_id
  order by total_rides desc limit 5;
  
  
  #4. List the top 5 customers who booked the highest number of rides:
  select * from top_5_customers_who_booked_the_highest_number_of_rides;  
 
 #5. Get the number of rides cancelled by drivers due to personal and car-related issues:
    create view rides_canceled_by_drivers_due_to_personal_and_car_related_issues as
    select count(*) from ola
    where Canceled_Rides_By_Driver = 'personal & car related issue';
    
    
    #5. Get the number of rides cancelled by drivers due to personal and car-related issues:
    select * from rides_canceled_by_drivers_due_to_personal_and_car_related_issues;
 
 #6. Find the maximum and minimum driver ratings for Prime Sedan bookings:
     create view max_min_Driver_rating as
     select max(Driver_Ratings) as max_rating,
     min(Driver_Ratings) as min_rating
     from ola where Vehicle_type = 'Prime Sedan';
     
     #6. Find the maximum and minimum driver ratings for Prime Sedan bookings:
     select * from max_min_Driver_Rating;
     
 #7. Retrieve all rides where payment was made using UPI:
 create view UPI_Payment as
 select* from ola
 where Payment_Method = 'UPI';
 
 #7. Retrieve all rides where payment was made using UPI:
 select * from UPI_Payment;
 
 #8. Find the average customer rating per vehicle type:
 create view avg_customer_rating as
 select Vehicle_type, AVG(Customer_Rating) as avg_customer_rating 
 from ola
 group by Vehicle_type;
 
 #8. Find the average customer rating per vehicle type:
 select * from avg_customer_rating;
  
 #9. Calculate the total booking value of rides completed successfully:
 create view total_successful_value as
 select sum(Booking_Value) as total_successful_value
 from ola
 where Booking_Status = 'success';
 
 #9. Calculate the total booking value of rides completed successfully:
 select * from total_successful_value;
 
 #10. List all incomplete rides along with the reasoncreate database project:
 create view Incomplete_Rides_Reason as
 select Booking_ID, Incomplete_Rides_Reason
 from ola
 where Incomplete_Rides = 'yes';
 
 #10. List all incomplete rides along with the reasoncreate database project:
 select * from Incomplete_Rides_Reason;
