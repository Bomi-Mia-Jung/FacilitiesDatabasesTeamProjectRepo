CREATE TABLE FailureConsequenceWeights( 
    failureConsequence failureConsequence PRIMARY KEY, 
    weight DECIMAL
);

--initialize weights for each ENUM
INSERT INTO conditionweights (condition, weight)
VALUES ('Nuisance', 1),
('Program Interruption', 3),
('Partial Building Shutdown', 4),
('Full Building Shutdown', 6),
('Multi-Building Shutdown', 8),
('Campus Shutdown', 9),
('Fire/Lifesafety', 10);