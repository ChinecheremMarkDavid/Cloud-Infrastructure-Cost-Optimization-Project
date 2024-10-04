select * from cloud_infrastructure_cost_optimization_cleaned

select Service_Type, sum(Cost) as sum_of_cost from cloud_infrastructure_cost_optimization_cleaned
group by Service_Type
order by 2 desc

select Service_Type, sum(Usage_Quantity) as sum_of_usage_quantity from cloud_infrastructure_cost_optimization_cleaned
group by Service_Type
order by 2 desc


-- Frequency distribution
-- Analyze the frequency of resource types (e.g., i- for instances, vol- for volumes)
select Resource_ID, count(Resource_ID) as frequency from cloud_infrastructure_cost_optimization_cleaned
group by Resource_ID
order by 2 desc

-- which resource has more usage and costs more
select Resource_ID, sum(Usage_Quantity) as sum_of_usage_quantity from cloud_infrastructure_cost_optimization_cleaned
group by Resource_ID
order by 2 desc

select Resource_ID, sum(cost) as sum_of_cost from cloud_infrastructure_cost_optimization_cleaned
group by Resource_ID
order by 2 desc
