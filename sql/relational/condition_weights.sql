CREATE TABLE ConditionWeights(
	condition condition PRIMARY KEY,
	weight DECIMAL
);
insert into conditionweights (condition, weight)
values ('Excellent', 1),
		('Good', 4),
		('Fair', 5),
		('Poor', 8),
		('Failed', 10);
