
# Facilities Databases Team Project Repo
Facilities Databases Team Project Repo, containing our Design Document, code, and more!

## Project Pitch and ER Model

Click here to view our [project pitch slides and ER Model](https://docs.google.com/presentation/d/1uM_XFWHimjOV0EHYIpQDjH7le_znanKHSNq5ak9fCNw/edit?usp=sharing)!

Click here to view our [Initial Implementation Demo Slides]([https://docs.google.com/presentation/d/1uM_XFWHimjOV0EHYIpQDjH7le_znanKHSNq5ak9fCNw/edit?usp=sharing](https://docs.google.com/presentation/d/1XreUjOO2BN4-sQKvC1YgGshVC-X9np3Vn5hc5A8KC3M/edit?usp=sharing)!

## Design Document
### Project Description:
- Our team’s project is dedicated to reorganizing, revamping, and visualizing the various data tables that the Amherst College Facilities uses. The fundamental purpose of the data is to keep track of building and facility conditions in order to determine which facilities need to be fixed or replaced. The efficient management of this data and implementation of a method to calculate the priority of facilities that require repair is critical, as it involves billions of dollars of our college’s money being channeled into these facilities projects.

### Interactions Users Will Have With the Database
- Given a map of the whole campus, user can select one or multiple buildings at a time and see their facility indexes
- User can see outcomes of various metrics depending on the allocation of money — can input different amounts of money and observe projected changes   
- Multi Prioritization scheme: User can provide information on their priorities from a list of options, and then the database will calculate an overall priority score for each building.

### Current State of Data
- The original data is stored in Google Tables, and the client is using Google Studios to calculate specific metrics because Google Tables does not support calculated fields.
- From data mapping:
- Assets: Describes information on buildings on campus
- Elements: Describes metrics for the status of buildings (e.g. condition, failure consequence)
- Requirements: Describes projects at the element level

### Deliverables
- Since the client employs a multi-prioritization scheme to keep track of the expenditures on the facility projects, we want to provide a comprehensive view of various metrics in order to inform their investment decisions.
    
- We also want to support the client with long-term financial plans. Our deliverables will show how the project costs and replacement values change over time in order to inform the optimal timing and amount of the investment.
    
### Software To Use
- To be determined. Currently, we are leaning toward Tableau because the client specifically mentioned wanting an easy no-code interaction with the database. Using Tableau allows the client to continue building/adding things to the database visualization after this project is complete.
- Ask about viable options for coding platforms — Tableau, HTML/CSS, Apache Cordova, MSSQL?
    
### Other details that will help us actually complete the project
- Still need access to the data tables — IT is actively working on this.
- Need to figure out how to store images in the RDBMS efficiently
    
### ER diagram
![Final_ER_Diagram](https://github.com/Bomi-Mia-Jung/Facilities_Databases_Team_Project_Repo/assets/77511489/db78e24a-a8bc-40d1-b16b-33089a72576c)
