select 
--variables used for maps
	p.asset_name as asset_name, asset_class, 
	asset_type, street_addr, latitude, longitude, 
--variables used for project costs
	pid, project_name, consult_estimate_high,
	case when consult_estimate_low is null 
		then quantity*unit_cost*replacement_factor*soft_cost_factor*difficulty_factor  
		else consult_estimate_low end as consult_estimate_low,  
	complete, in_progress, actual_cost
from projects p
left join assets a
on p.asset_name = a.asset_name;