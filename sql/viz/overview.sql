--total number of projects, completed projects, in-progress projects
SELECT 
    a.*,
    COALESCE(p.num_projects, 0) AS num_projects,
    COALESCE(p.num_complete, 0) AS num_complete,
    COALESCE(p.num_progress, 0) AS num_progress
FROM 
    assets a
LEFT JOIN
    (SELECT 
        asset_name, 
        COUNT(*) AS num_projects,
        SUM(CASE WHEN complete = TRUE THEN 1 ELSE 0 END) AS num_complete,
        SUM(CASE WHEN in_progress = TRUE THEN 1 ELSE 0 END) AS num_progress
     FROM 
        projects
     GROUP BY asset_name) AS p ON a.asset_name = p.asset_name;



--number of high-priority (75th percentile) projects 
WITH PriorityScores AS (
    SELECT 
        p.asset_name, 
        a.asset_weight * 10 + cw.weight * 20 + fc.weight * 30 AS priority_score                                    
    FROM 
        projects p
    JOIN 
        assets a ON p.asset_name = a.asset_name
    JOIN 
        conditionweights cw ON p."condition" = cw."condition"
    JOIN 
        fcweights fc ON p.failure_consequence = fc."failureconsequence"
),
Percentile75 AS (
    SELECT 
        PERCENTILE_CONT(0.75) WITHIN GROUP (ORDER BY priority_score) AS percentile75
    FROM 
        PriorityScores
)
SELECT 
    COUNT(*) 
FROM 
    PriorityScores, Percentile75
WHERE 
    PriorityScores.priority_score > Percentile75.percentile75;