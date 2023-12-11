select 
--variables used for maps
	p.asset_name as asset_name, asset_class, 
	asset_type, street_addr, latitude, longitude, 
--variables used for project costs
	pid, project_name, consultestimate_high,
	case when consultestimate_low is null 
		then p.unit*p.unitcost*replacementfactor*softcostfactor*difficultyfactor  
		else consultestimatelow end as consultestimatelow,  
	complete, inprogress, actualcost
from projects p
left join elements e 
on p.eid = e.eid
left join assets a
on e.assetname = a.aname;