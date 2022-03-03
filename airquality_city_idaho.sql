SELECT DISTINCT city_name,
FROM `bigquery-public-data.epa_historical_air_quality.air_quality_annual_summary`
WHERE LOWER(state_name)='idaho'
