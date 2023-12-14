select a.asset_name, sum(p.consult_estimate_high)/a.replacement_value as fci
from projects p
join assets a on a.asset_name = p.asset_name 
where p.complete != true and p.renewal = true
group by a.asset_name;