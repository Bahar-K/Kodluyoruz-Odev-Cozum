--1. film tablosundan 'K' karakteri ile başlayan en uzun ve replacement_cost en düşük 4 filmi sıralayınız.
SELECT title,length,replacement_cost FROM FILM
WHERE title LIKE 'K%'
ORDER BY length DESC , replacement_cost
LIMIT 4;

--2. film tablosunda içerisinden en fazla sayıda film bulunduran rating kategorisi hangisidir?
SELECT rating, COUNT(*) FROM film
GROUP BY rating
ORDER BY COUNT(*) DESC
LIMIT 1;

--3. cutomer tablosunda en çok alışveriş yapan müşterinin adı nedir?
SELECT first_name,SUM(amount) FROM payment
INNER JOIN customer ON customer.customer_id = payment.customer_id 
GROUP BY first_name, payment.customer_id
ORDER BY SUM(amount) DESC
LIMIT 1 ; 


--4. category tablosundan kategori isimlerini ve kategori başına düşen film sayılarını sıralayınız.
SELECT name, COUNT(*) FROM category
INNER JOIN film_category ON category.category_id = film_category.category_id
GROUP BY category.category_id
ORDER BY COUNT(*) DESC;


--5. film tablosunda isminde en az 4 adet 'e' veya 'E' karakteri bulunan kaç tane film vardır?
SELECT COUNT(*) FROM film 
WHERE title ILIKE '%e%e%e%e%';
