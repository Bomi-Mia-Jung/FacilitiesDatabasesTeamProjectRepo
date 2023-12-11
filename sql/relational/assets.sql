--TO-DO: add comments
create table Assets(
	asset_name VARCHAR primary key,
	alt_name VARCHAR,
	abbreviation CHAR(5),
	asset_class class,
	asset_type purpose,
	street_addr VARCHAR,
	gross_square_feet DECIMAL,
	replacement_value DECIMAL,
	latitude DECIMAL,
	longitude DECIMAL,
	facility_condition_index DECIMAL
);