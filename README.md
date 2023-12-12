
# Facilities Databases Team Project Repo
Explore our GitHub repository chronicling our collaboration with the Amherst College Facilities Department!

Our mission involved a comprehensive overhaul of their data table structure, the establishment of a robust backend database, and the development of an intuitive frontend dashboard that facilitates seamless interaction with the database and provides insightful visualizations for optimizing financial planning.

Discover key project components such as the Design Document, Relational Schema, ER Model, and the interactive frontend dashboard. Our PostgreSQL database is hosted on a Linux Server, integrated with Tableau to perform queries to the database and craft a dynamic and engaging data visualization dashboard. Dive into our journey and the impactful solutions we've crafted for our client!

## Project Pitch and ER Model
[Project Pitch Slides](https://docs.google.com/presentation/d/1uM_XFWHimjOV0EHYIpQDjH7le_znanKHSNq5ak9fCNw/edit?usp=sharing).

[Facilities Database Initial Implementation Demo Slides](https://docs.google.com/presentation/d/1XreUjOO2BN4-sQKvC1YgGshVC-X9np3Vn5hc5A8KC3M/edit?usp=sharing).

[Facilities Databases Final Presentation](https://docs.google.com/presentation/d/1xGqApQV4roMEiT7FdtBrJUmot1QlNXUo3Blfq9OOeKE/edit?usp=sharing).

## Design Document

### Project Description:
- Our team’s project is dedicated to reorganizing, revamping, and visualizing the various data tables that the Amherst College Facilities uses. The fundamental purpose of the data is to keep track of building and facility conditions to determine which facilities need to be fixed or replaced. The efficient management of this data and implementation of a method to calculate the priority of facilities that require repair is critical, as billions of dollars of our college’s money are channeled into these facilities projects.

### Interactions Users Can Have With the Database / Deliverables
- Given a map of the whole campus, user can select one or multiple buildings at a time and see their facility indexes
- User can see outcomes of various metrics depending on the allocation of money — can input different amounts of money and observe projected changes   
- Multi Prioritization scheme: User can provide information on their priorities from a list of options, and then the database will calculate an overall priority score for each building.
- Since the client employs a multi-prioritization scheme to keep track of the expenditures on the facility projects, we want to provide a comprehensive view of various metrics in order to inform their investment decisions.
- We also want to support the client with long-term financial plans. Our deliverables will show how the project costs and replacement values change over time in order to inform the optimal timing and amount of the investment.
- Click here to view our [Facilities Database Live Tableau Dashboard](https://public.tableau.com/app/profile/angelica.kim1227/viz/FacilityDatabase/Story1?publish=yes)!

### Current State of Data
- The original data was stored in Google Tables, and the client is using Google Studios to calculate specific metrics because Google Tables does not support calculated fields.
- We've populated our PostgreSQL database with the data entries in Google Tables.
    
### Software Used
- We used Tableau Desktop (using a 1-year student trial) because the client specifically mentioned wanting an easy no-code interaction with the database. Using Tableau will allow the client to continue building/adding things to the database visualization after completing this project.
- Postgresql on Linux Server
- DBeaver IDE
    
### ER diagram
![Final ER Diagram](https://github.com/Bomi-Mia-Jung/Facilities_Databases_Team_Project_Repo/assets/77511489/a879fd35-6928-4d2b-a5de-750f1d803010)

