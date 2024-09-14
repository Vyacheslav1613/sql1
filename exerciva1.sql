create schema netology;

CREATE TABLE netology.PERSONS (
    name text not null,
    surname text not null,
    age INT not null,
    phone_number VARCHAR(20),
    city_of_living VARCHAR(50),
    PRIMARY KEY (name, surname, age)
);

insert into netology.persons (name, surname, age, phone_number, city_of_living)
values ('Иван', 'Павлов', 27, '8-999-999-99-99', 'Москва'),
	   ('Анна', 'Васильева', 25, '8-800-555-35-25', 'Москва'),
       ('Евгений', 'Иванов', 35, '8-912-320-50-50', 'Екатеринбург');
       
select name, surname
from netology.persons
where city_of_living = 'Москва';

select *
from netology.persons
where age > 27
order by age desc;

update netology.persons 
set age = 30
where name = 'Иван'