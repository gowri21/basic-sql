with o3_2019 as 
(select latitude,longitude,city_name,aqi as o3_aqi from bigquery-public-data.epa_historical_air_quality.o3_daily_summary 
where date_local between date('2019-01-31') and date('2019-12-31')),

no2_2019 as 
(select latitude,longitude,city_name,aqi as no2_aqi from bigquery-public-data.epa_historical_air_quality.no2_daily_summary 
where  date_local between date('2019-01-31') and date('2019-12-31'))

select * from o3_2019 as o3
inner join no2_2019 as no2
on o3.latitude = no2.latitude and o3.longitude = no2.longitude
