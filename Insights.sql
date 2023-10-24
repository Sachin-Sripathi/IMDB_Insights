use movies;

select * from movies_metadata;
select * from ratings;


#1. Number of movies released each month to find the Dump month
select extract(month from release_data) as Month, ( count(id)) as No_of_movies_released from movies_metadata group by Month(release_data) 
         order by No_of_movies_released desc limit 12;
		
#2. Top ten movies with highest revenue each year between 1990 and 2017
select Year_released, id, `original title`, revenue, rk from ( 
     select extract(year from release_data) as Year_released, id, `original title`, revenue, 
     rank() over (partition by year(release_data) order by revenue desc) rk 
     from movies_metadata where year(release_data) between 1990 and 2017
     group by id
     ) as r 
     where rk <= 10 order by Year_released asc, revenue desc;
     
     
#3. Average Budget and Revenue of movies every decade(Raghu)

select concat(decade, '-', decade + 9) as year, round(avg(revenue),2) as Avg_Revenue, round(avg(budget),2) Avg_Budget
from (select floor(year(`release_data`) / 10) * 10 as decade, revenue, budget
      from movies_metadata where year(`release_data`) between 1950 and 2010) t
group by decade order by year;

#4. Average budget of movies every decade(Raghu)
select count(*) as No_of_Movies, concat(decade, '-', decade + 9) as year, round(avg(budget),2) Avg_Budget
from (select floor(year(`release_data`) / 10) * 10 as decade, budget
      from movies_metadata where year(`release_data`) between 1990 and 2010) t
group by decade order by year;

#5. 
select Adult, avg(ratings.rating) as Avg_rating from movies_metadata
	join ratings on ratings.movie_id = movies_metadata.id
		group by adult;
        
#6. 
select Adult, avg(`vote count`) as Avg_Vote from movies_metadata
where adult in ('True','False')
group by adult;

#7. 
select * from movies_metadata;

select `original language`, round(avg(runtime),0) from movies_metadata
group by `original language`
order by avg(runtime) desc limit 10;
