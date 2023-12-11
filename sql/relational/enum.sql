-- create ENUM
create type location as enum ('Building Exterior', 'Lobby','Mechanical Room', 'Restrooms','Roof','Site','Throughout Building', 'Utility Closet');
create type condition as enum ('Excellent', 'Good', 'Fair', 'Poor', 'Failed','Unknown');
create type failureConsequence as enum ('Nuisance', 'Program Interruption', 'Partial Building Shutdown', 
'Full Building Shutdown', 'Multi-Building Shutdown', 'Campus Shutdown', 'Fire/Lifesafety');
create type class as enum ('Building', 'Court', 'Field', 'Road', 'Utility');
create type purpose as enum ('Academic', 'Administrative', 'Athletic', 'Campus', 'Faculty Housing', 'Residence Hall', 'Student Life');

-- how to delete an ENUM
drop type failureConsequence;

--get ENUM values
select * from pg_catalog.pg_enum ;