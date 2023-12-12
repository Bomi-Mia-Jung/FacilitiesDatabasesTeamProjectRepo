-- postgresql code that queries for the prority score of projects
SELECT 
    p.project_name, a.asset_type, cw."condition", fc."failureconsequence", 
    a.asset_weight*10  + cw.weight*20 + fc.weight *30 AS priority_score									
FROM 
    projects p
JOIN 
    assets a ON p.asset_name = a.asset_name
JOIN 
    conditionweights cw ON p."condition" = cw."condition"
JOIN 
    fcweights fc ON p.failure_consequence = fc."failureconsequence";
