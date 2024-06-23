--TASK 41A ODEYEMI SAMUEL O.
/* Morty Schapiro ~
I heard a gunshot and then saw a man run out. He had a "Get Fit Now Gym" bag.
The membership number on the bag started with "48Z". Only gold members have those bags.
The man got into a car with a plate that included "H42W". */
/* Annabel Miller ~	
I saw the murder happen, and I recognized the killer
from my gym when I was working out last week on January the 9th.
*/

SELECT p.name, dl.age, dl.height, dl.eye_color, i.transcript
FROM person p 
JOIN drivers_license dl ON dl.id = p.license_id
JOIN interview i ON i.person_id = p.id
WHERE p.name = 'Jeremy Bowers' 


--JEREMY BOWERS matches the id, membership status, gender and plate number and we cross check with his interview transcript~
/*I was hired by a woman with a lot of money. I don't know her name but I know she's around 5'5" (65") or 5'7" (67").
She has red hair and she drives a Tesla Model S.
I know that she attended the SQL Symphony Concert 3 times in December 2017.*/


SELECT p.name, dl.age, dl.height, dl.eye_color, dl.hair_color, dl.car_make, dl.car_model, fb.event_name, fb.date, i.annual_income
FROM person p
JOIN drivers_license dl ON dl.id = p.license_id
JOIN facebook_event_checkin fb ON fb.person_id = p.id
JOIN income i ON i.ssn = p.ssn	
WHERE dl.height BETWEEN 65 AND 67
  AND dl.hair_color = 'red'
  AND dl.car_make = 'Tesla'
  AND dl.car_model = 'Model S'
  AND fb.event_name = 'SQL Symphony Concert'
  AND CAST(fb.date AS VARCHAR) LIKE '2017%'
GROUP BY p.name, dl.age, dl.height, dl.eye_color, dl.hair_color, dl.car_make, dl.car_model, fb.event_name, fb.date, i.annual_income	

/* Miranda Priestly is the mastermind behind the murder as the check brings up only this woman*/

