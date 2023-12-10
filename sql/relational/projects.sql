--TO-DO: add comments
create table Projects(
pid VARCHAR PRIMARY KEY,
project_name VARCHAR,
asset_name VARCHAR not null references Assets (asset_name) on delete cascade, 
category VARCHAR,
description VARCHAR,
related_projects VARCHAR,
complete BOOLEAN,
in_progress BOOLEAN,
renewal BOOLEAN,
inspected_date_tmp VARCHAR,
due_year integer,
target_year integer,
replacement_factor DECIMAL,
soft_cost_factor DECIMAL,
difficulty_factor DECIMAL,
consult_estimate_low DECIMAL,
consult_estimate_high DECIMAL,
calculated_cost DECIMAL,
total_quantity DECIMAL,
quantity DECIMAL CHECK(quantity <= total_quantity),
completed_date integer,
actual_cost DECIMAL,
actual_cost_notes VARCHAR,
image_url VARCHAR);

ALTER TABLE projects
ADD COLUMN inspected_date date;

UPDATE projects
SET inspected_date = TO_DATE(inspected_date_tmp, 'MM/DD/YY');

alter table projects drop column inspected_date_tmp;

ALTER TABLE projects
ADD CONSTRAINT fk_related_projects
FOREIGN KEY (related_projects) REFERENCES projects(pid);