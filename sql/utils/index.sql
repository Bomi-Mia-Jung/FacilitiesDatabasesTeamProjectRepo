--create index
CREATE INDEX idx_eid ON elements USING HASH(eid);
CREATE INDEX idx_assetname ON assets USING HASH(assetname);
CREATE INDEX idx_projects_eid ON projects USING hash(eid);
CREATE INDEX idx_project_assetname ON projects USING hash(assetname);

-- get index
SELECT * FROM pg_indexes WHERE schemaname = 'public';

--analyze runtimes/index scan on the query used for project cost calculation
explain analyze select 
--variables used for maps
	p.assetname as assetName, class, 
	assettype, streetaddr, latitude, longitude, 
--variables used for project costs
	pid, projectname, consultestimatehigh,
	case when consultestimatelow is null 
		then p.baseCost*replacementfactor*softcostfactor*difficultyfactor  
		else consultestimatelow end as consultestimatelow,  
	complete, inprogress, actualcost
from projects p
left join elements e 
on p.eid = e.eid
left join assets a
on e.assetname = a.aname;

--analyze runtimes/index scan on a sorting query
explain analyze select * from projects order by asset

