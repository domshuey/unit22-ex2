select * from owners o full 
    join vehicles v on o.id = v.owner_id;

 select concat(first_name, ' ',last_name) as Owner, count(*) from vehicles v 
    join owners o on v.owner_id = o.id 
    group by Owner 
    order by Owner asc;

select first_name, last_name, cast(avg(price) as int) as average_price, count(*) from vehicles v 
    join owners o on v.owner_id = o.id 
    group by first_name, last_name 
        having count(*) > 1 and cast(avg(price) as int) > 10000;