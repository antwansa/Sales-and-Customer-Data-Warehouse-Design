Here's a concise and structured README file for your project based on the details you've shared:

---

# Sales Data Warehouse Project

## Overview
This project involves the creation of a data warehouse to handle sales transactions for an electronics store franchise. The dataset was structured using a star schema, with one fact table and multiple dimension tables, designed to support efficient querying and analysis. An ETL pipeline was built to extract data from source files, transform it into a usable format, and load it into the data warehouse. The pipeline was implemented using SQL and SSIS, with a focus on optimizing performance and ensuring data consistency.

## Project Structure
- **Fact Table**: Contains sales transactions, including product, customer, and financial details.
- **Dimension Tables**:
  - `DateDIM`: Stores date-related information like day, month, and year.
  - `ProductDIM`: Contains product details including product name, category, and brand.
  - `CustomerDIM`: Holds customer details such as name, location, and contact information.
  - `OrderDetailsDIM`: Includes details on order priority and discount categories.
- **Staging Layer**: Used to store raw data before it is processed into the fact and dimension tables.
  
## Challenges
- **Derived Columns**: It was a challenge to create a dedicated dimension table (`OrderDetailsDIM`) with derived columns that were calculated based on the fact table. To resolve this, we implemented a staging layer that allowed for the transformation and calculation of derived values before loading them into the final dimension table.

## Features
- **Star Schema Design**: The star schema enables fast query performance and ease of use for reporting and analytics.
- **ETL Pipeline**: The ETL pipeline extracts data from Excel files, transforms it by cleansing and standardizing values, and loads it into the data warehouse.
- **SQL Scripts**: A SQL script is used for testing purposes to drop foreign keys, truncate tables, and reassign the keys afterward, ensuring a clean slate for reloading data during the ETL process.
    
## Tools Used
- **SQL Server Management Studio (SSMS)**: For database creation and SQL scripting.
- **SSIS**: To implement the ETL pipeline for extracting, transforming, and loading data.
- **Excel**: For source data storage and manual data validation before loading.

## Future Work
- **Visualization**: A visualization of key sales metrics using Power BI will be added soon to enhance the project and provide interactive dashboards for better insights.
