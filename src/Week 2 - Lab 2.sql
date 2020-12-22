-- Query A1: Enter a function that calculates the total cost of all animal rescues in the PETRESCUE table.
select sum(COST) from PETRESCUE;

-- Query A2: Enter a function that displays the total cost of all animal rescues in the PETRESCUE table in a column called SUM_OF_COST.
select sum(COST) as SUM_OF_COST from PETRESCUE;

-- Query A3: Enter a function that displays the maximum quantity of animals rescued.
select max(QUANTITY) from PETRESCUE;

-- Query A4: Enter a function that displays the average cost of animals rescued.
select avg(COST) from PETRESCUE;

-- Query A5: Enter a function that displays the average cost of rescuing a dog.
select avg(COST / QUANTITY) from PETRESCUE where lower(ANIMAL) = 'dog';

-- Query B1: Enter a function that displays the rounded cost of each rescue.
select round(COST) from PETRESCUE;

-- Query B2: Enter a function that displays the length of each animal name.
select length(ANIMAL) from PETRESCUE;

-- Query B3: Enter a function that displays the animal name in each rescue in uppercase.
select upper(ANIMAL) from PETRESCUE;

-- Query B4: Enter a function that displays the animal name in each rescue in uppercase without duplications.
select distinct(upper(ANIMAL)) from PETRESCUE;

-- Query B5: Enter a query that displays all the columns from the PETRESCUE table, where the animal(s) rescued are cats. 
-- Use cat in lower case in the query.
select * from PETRESCUE where lower(ANIMAL) = 'cat';

-- Query C1: Enter a function that displays the day of the month when cats have been rescued.
select day(rescuedate) from petrescue where lower(animal) = 'cat';

-- Query C2: Enter a function that displays the number of rescues on the 4th day of the month.
select quantity from petrescue where day(rescuedate) = '04';

-- Query C3: Animals rescued should see the vet within three days of arrivals. Enter a function that displays the third day from each rescue.
select day(rescuedate + 3 days) from petrescue;

-- Query C4: Enter a function that displays the length of time the animals have been rescued; the difference between today’s date and the rescue date.
select (current_date - rescuedate) from petrescue;