-- Question 1

select first_name, last_name, district
from customer
inner join address
on customer.address_id = address.address_id
where district = 'Texas'

-- Question 2

select first_name, last_name, amount
from customer
inner join payment
on customer.customer_id = payment.customer_id
where amount > 6.99;


-- Question 3

select first_name, last_name
from customer
where customer_id in (
	select customer_id
	from payment
	group by customer_id
	having sum(amount) > 175
);

-- Question 4

select first_name, last_name
from customer
inner join address
on customer.address_id = address.address_id
inner join city
on city.city_id = address.city_id 
inner join country
on country.country_id = city.country_id
where country = 'Nepal'


-- Question 5

select count(payment_id), payment.staff_id 
from payment
inner join staff
on payment.staff_id = staff.staff_id
group by payment.staff_id 
;

-- question 6

select rating, count(*) as birdie
from film
group by rating 

-- Question 7

SELECT distinct customer.customer_id, first_name, last_name 
FROM customer
inner join payment
on customer.customer_id = payment.customer_id
WHERE payment.amount > 6.99
order by customer_id 
;