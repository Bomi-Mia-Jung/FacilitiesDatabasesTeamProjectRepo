CREATE TABLE ConditionWeights(
	condition condition PRIMARY KEY,
	weight DECIMAL
);

--initialize weights for each ENUM
INSERT INTO conditionweights (condition, weight)
VALUES ('Excellent', 1),
		('Good', 4),
		('Fair', 5),
		('Poor', 8),
		('Failed', 10);
