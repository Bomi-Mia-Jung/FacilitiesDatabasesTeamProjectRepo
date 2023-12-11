--TO-DO: add comments
create table Projects(
pid	VARCHAR PRIMARY KEY,
project_name VARCHAR, 
asset_name VARCHAR not null references Assets (asset_name) on delete cascade, 
category VARCHAR, 
description VARCHAR, 
related_projects VARCHAR, 
complete BOOLEAN,
in_progress	BOOLEAN,
renewal	BOOLEAN,
due_year INTEGER,
target_year INTEGER,
replacement_factor NUMERIC,
soft_cost_factor NUMERIC,
difficulty_factor NUMERIC,
consult_estimate_low NUMERIC,
consult_estimate_high NUMERIC,
calculated_cost	NUMERIC,
quantity NUMERIC CHECK(quantity <= total_quantity),
total_quantity NUMERIC,
completed_date INTEGER,
actual_cost	NUMERIC,
actual_cost_notes VARCHAR,
image_url VARCHAR,
inspected_date DATE,
l2code VARCHAR,
l3code VARCHAR,
component VARCHAR,
condition_notes	VARCHAR,
remaining_useful_life NUMERIC,
unit VARCHAR,
unitcost NUMERIC,
install_renovate_year INTEGER,
condition condition, --enum
failure_consequence failureConsequence, --enum
imageurl VARCHAR);




--convert the existing inspected_date column (VARCHAR type) to date type
UPDATE projects
SET inspected_date = TO_DATE(inspected_date_tmp, 'MM/DD/YY');
alter table projects drop column inspected_date_tmp;

--combine with Elements table
CREATE TEMP TABLE temp_projects AS
SELECT *
FROM projects t1
LEFT JOIN (
	select eid,
		assetname,
		l2code,
		l3code,
		elements,
		component,
		condition_notes,
		rul,
		unit,
		unitcost,
		quantity as total_quantity,
		install_renovate_date as install_renovate_year,
		condition,
		failure_consequence,
		imageurl
	from elements
) t2
ON t1.asset_name = t2.assetname AND t1.project_name LIKE '%' || t2.component || '%'
WHERE (t2.eid IS NULL OR t2.eid != 14);

drop table projects;
CREATE TABLE projects AS
SELECT * FROM temp_projects;
--manually add PK constraints
ALTER TABLE projects
ADD PRIMARY KEY (pid);
--manually add NOT NULL constraint
ALTER TABLE projects
ALTER COLUMN asset_name SET NOT NULL;
--manually add FK constraint
ALTER TABLE projects
ADD CONSTRAINT fk_asset_name
FOREIGN KEY (asset_name) REFERENCES Assets(asset_name)
ON DELETE CASCADE;
--manually add self-referential FK constraint
ALTER TABLE projects
ADD CONSTRAINT fk_related_projects
FOREIGN KEY (related_projects) REFERENCES projects(pid);
--manually add domain constraint
ALTER TABLE projects
ADD CONSTRAINT constraint_quantity CHECK (quantity <= total_quantity);
