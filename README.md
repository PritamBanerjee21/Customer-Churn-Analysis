# Telecom Customer Churn Analysis

This repository contains a comprehensive project on customer churn analysis for a telecom service provider. The project includes data cleaning, visualization, and predictive modeling to identify potential churners among newly joined customers. The final results are presented through an interactive PowerBI dashboard available for public access.

## Table of Contents

1. [Project Overview](#project-overview)
2. [Data Loading and Cleaning](#data-loading-and-cleaning)
3. [Data Analysis with SQL](#data-analysis-with-sql)
4. [PowerBI Dashboard](#powerbi-dashboard)
5. [Machine Learning Model](#machine-learning-model)
6. [Prediction and Further Analysis](#prediction-and-further-analysis)
7. [Final Dashboard](#final-dashboard)
8. [Getting Started](#getting-started)
9. [Contributing](#contributing)

## Project Overview

This project aims to analyze and predict customer churn for a telecom service provider. The analysis includes:

- Loading and cleaning customer data.
- Creating views for newly joined and churned customers.
- Developing interactive PowerBI dashboards for churn analysis.
- Building a machine learning model to predict potential churners.
- Publishing the results for public access.

## Data Loading and Cleaning

The customer data was loaded into MySQL to facilitate data exploration and cleaning. The steps included:

- Viewing the distribution of categorical columns.
- Filling null values appropriately.
- Dividing the data into two views:
  - `joined_view`: Newly joined customers.
  - `churned_view`: Past customers who have churned.

## Data Analysis with SQL

Using SQL, the data was analyzed and prepared for further visualization and modeling. The views created (`joined_view` and `churned_view`) were essential for segmenting the customers based on their status.

## PowerBI Dashboard

The entire customer dataset was imported into PowerBI for detailed churn analysis. Key features of the PowerBI dashboard include:

- Churn rate analysis based on variables such as state, contract, gender, tenure, payment method, etc.
- Interactive slicers based on marital status and monthly charge status.

## Machine Learning Model

A machine learning model was developed using Jupyter Notebook to predict churners among newly joined customers. Key steps included:

- Using the `churned_view` data for training.
- Handling data imbalance with the Balanced Random Forest Classifier from `imblearn.ensemble`.
- Hyperparameter tuning to achieve 82% accuracy.

## Prediction and Further Analysis

Predictions were made on the `joined_view` dataset using the trained model. The predicted churners' data was saved as `analysis_data.csv`.

## Final Dashboard

A second PowerBI dashboard was created to analyze the customers predicted to churn. This dashboard provides insights specifically for the predicted churners.

Link to the published dashboard :- https://app.powerbi.com/view?r=eyJrIjoiM2YxYWUwNzYtZWIwOS00Mjk0LWJmZGEtMDkyYzBiMzhjZWIzIiwidCI6IjllZGExZmIzLWZlMjgtNDFlNi05OTZjLWM3YWVhOGQ5N2YxMCJ9

## Getting Started

To get started with the project, follow these steps:

1. Clone the repository:
   ```sh
   git clone https://github.com/yourusername/telecom-customer-churn-analysis.git
   ```
2. Set up the necessary dependencies and databases as per the instructions in the repository.

## Contributing

Contributions are welcome! Please fork the repository and submit a pull request for any enhancements or bug fixes.
