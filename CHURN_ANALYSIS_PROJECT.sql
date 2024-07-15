-- Creating new database and using it
CREATE DATABASE churn;
USE churn;

-- Analyzing some of the essential categorical columns 
SELECT Gender, COUNT(Gender) AS gender_count, 
(COUNT(Gender) * 100.0 / (SELECT COUNT(*) FROM customer_data)) AS gender_distribution FROM customer_data
GROUP BY Gender;

SELECT Married, COUNT(Married) AS married_count, 
(COUNT(Married) * 100.0 / (SELECT COUNT(*) FROM customer_data)) AS married_distribution FROM customer_data
GROUP BY Married;

SELECT State, COUNT(State) AS state_count, 
(COUNT(State) * 100.0 / (SELECT COUNT(*) FROM customer_data)) AS state_distribution FROM customer_data
GROUP BY State ORDER BY state_distribution DESC LIMIT 5;

SELECT Contract, COUNT(Contract) AS contract_count, 
(COUNT(Contract) * 100.0 / (SELECT COUNT(*) FROM customer_data)) AS contract_distribution FROM customer_data
GROUP BY Contract;

SELECT Internet_Type, COUNT(Internet_Type) AS internet_type_count, 
(COUNT(Internet_Type) * 100.0 / (SELECT COUNT(*) FROM customer_data)) AS internet_type_distribution FROM customer_data
GROUP BY Internet_Type;

SELECT Payment_Method, COUNT(Payment_Method) AS payment_method_count, 
(COUNT(Payment_Method) * 100.0 / (SELECT COUNT(*) FROM customer_data)) AS payment_method_distribution FROM customer_data
GROUP BY Payment_Method;

SELECT Customer_Status,SUM(Total_Revenue) AS total_revenue, COUNT(Customer_Status) AS customer_status_count, 
(COUNT(Customer_Status) * 100.0 / (SELECT COUNT(*) FROM customer_data)) AS customer_status_distribution,
 (SUM(Total_Revenue) * 100.0 / (SELECT SUM(Total_Revenue) FROM customer_data)) AS revenue_percentage FROM customer_data
GROUP BY Customer_Status;


-- Checking for null values in the columns

SELECT 
    SUM(CASE WHEN ï»¿Customer_ID IS NULL THEN 1 ELSE 0 END) AS Customer_ID_Null_Count,
    SUM(CASE WHEN Gender IS NULL THEN 1 ELSE 0 END) AS Gender_Null_Count,
    SUM(CASE WHEN Age IS NULL THEN 1 ELSE 0 END) AS Age_Null_Count,
    SUM(CASE WHEN Married IS NULL THEN 1 ELSE 0 END) AS Married_Null_Count,
    SUM(CASE WHEN State IS NULL THEN 1 ELSE 0 END) AS State_Null_Count,
    SUM(CASE WHEN Number_of_Referrals IS NULL THEN 1 ELSE 0 END) AS Number_of_Referrals_Null_Count,
    SUM(CASE WHEN Tenure_in_Months IS NULL THEN 1 ELSE 0 END) AS Tenure_in_Months_Null_Count,
    SUM(CASE WHEN Value_Deal IS NULL THEN 1 ELSE 0 END) AS Value_Deal_Null_Count,
    SUM(CASE WHEN Phone_Service IS NULL THEN 1 ELSE 0 END) AS Phone_Service_Null_Count,
    SUM(CASE WHEN Multiple_Lines IS NULL THEN 1 ELSE 0 END) AS Multiple_Lines_Null_Count,
    SUM(CASE WHEN Internet_Service IS NULL THEN 1 ELSE 0 END) AS Internet_Service_Null_Count,
    SUM(CASE WHEN Internet_Type IS NULL THEN 1 ELSE 0 END) AS Internet_Type_Null_Count,
    SUM(CASE WHEN Online_Security IS NULL THEN 1 ELSE 0 END) AS Online_Security_Null_Count,
    SUM(CASE WHEN Online_Backup IS NULL THEN 1 ELSE 0 END) AS Online_Backup_Null_Count,
    SUM(CASE WHEN Device_Protection_Plan IS NULL THEN 1 ELSE 0 END) AS Device_Protection_Plan_Null_Count,
	SUM(CASE WHEN Premium_Support IS NULL THEN 1 ELSE 0 END) AS Premium_Support_Null_Count,
    SUM(CASE WHEN Streaming_TV IS NULL THEN 1 ELSE 0 END) AS Streaming_TV_Null_Count,
    SUM(CASE WHEN Streaming_Movies IS NULL THEN 1 ELSE 0 END) AS Streaming_Movies_Null_Count,
    SUM(CASE WHEN Streaming_Music IS NULL THEN 1 ELSE 0 END) AS Streaming_Music_Null_Count,
    SUM(CASE WHEN Unlimited_Data IS NULL THEN 1 ELSE 0 END) AS Unlimited_Data_Null_Count,
    SUM(CASE WHEN Contract IS NULL THEN 1 ELSE 0 END) AS Contract_Null_Count,
    SUM(CASE WHEN Paperless_Billing IS NULL THEN 1 ELSE 0 END) AS Paperless_Billing_Null_Count,
    SUM(CASE WHEN Payment_Method IS NULL THEN 1 ELSE 0 END) AS Payment_Method_Null_Count,
    SUM(CASE WHEN Monthly_Charge IS NULL THEN 1 ELSE 0 END) AS Monthly_Charge_Null_Count,
    SUM(CASE WHEN Total_Charges IS NULL THEN 1 ELSE 0 END) AS Total_Charges_Null_Count,
    SUM(CASE WHEN Total_Refunds IS NULL THEN 1 ELSE 0 END) AS Total_Refunds_Null_Count,
    SUM(CASE WHEN Total_Extra_Data_Charges IS NULL THEN 1 ELSE 0 END) AS Total_Extra_Data_Charges_Null_Count,
    SUM(CASE WHEN Total_Long_Distance_Charges IS NULL THEN 1 ELSE 0 END) AS Total_Long_Distance_Charges_Null_Count,
    SUM(CASE WHEN Total_Revenue IS NULL THEN 1 ELSE 0 END) AS Total_Revenue_Null_Count,
    SUM(CASE WHEN Customer_Status IS NULL THEN 1 ELSE 0 END) AS Customer_Status_Null_Count,
    SUM(CASE WHEN Churn_Category IS NULL THEN 1 ELSE 0 END) AS Churn_Category_Null_Count,
    SUM(CASE WHEN Churn_Reason IS NULL THEN 1 ELSE 0 END) AS Churn_Reason_Null_Count
FROM customer_data;


-- Removing null values from the table

SELECT 
    ï»¿Customer_ID,
    Gender,
    Age,
    Married,
    State,
    Number_of_Referrals,
    Tenure_in_Months,
    CASE WHEN Value_Deal IS NULL THEN 'None' ELSE Value_Deal END AS Value_Deal,
    Phone_Service,
    CASE WHEN Multiple_Lines IS NULL THEN 'No' ELSE Multiple_Lines END As Multiple_Lines,
    Internet_Service,
    CASE WHEN Internet_Type IS NULL THEN 'None' ELSE Internet_Type END AS Internet_Type,
    CASE WHEN Online_Security IS NULL THEN 'No' ELSE Online_Security END AS Online_Security,
    CASE WHEN Online_Backup IS NULL THEN 'No' ELSE Online_Backup END AS Online_Backup,
    CASE WHEN Device_Protection_Plan IS NULL THEN 'No' ELSE Device_Protection_Plan END AS Device_Protection_Plan,
    CASE WHEN Premium_Support IS NULL THEN 'No' ELSE Premium_Support END AS Premium_Support,
    CASE WHEN Streaming_TV IS NULL THEN 'No' ELSE Streaming_TV END AS Streaming_TV,
    CASE WHEN Streaming_Movies IS NULL THEN 'No' ELSE Streaming_Movies END AS Streaming_Movies,
    CASE WHEN Streaming_Music IS NULL THEN 'No' ELSE Streaming_Music END AS Streaming_Music,
    CASE WHEN Unlimited_Data IS NULL THEN 'No' ELSE Unlimited_Data END AS Unlimited_Data,
    Contract,
    Paperless_Billing,
    Payment_Method,
    Monthly_Charge,
    Total_Charges,
    Total_Refunds,
    Total_Extra_Data_Charges,
    Total_Long_Distance_Charges,
    Total_Revenue,
    Customer_Status,
    CASE WHEN Churn_Category IS NULL THEN 'Others' ELSE Churn_Category END AS Churn_Category,
    CASE WHEN Churn_Reason IS NULL THEN 'Others' ELSE Churn_Reason END AS Churn_Reason
FROM customer_data;


-- Creating views for PowerBi

CREATE VIEW churn_view AS
	SELECT * FROM customer_data WHERE Customer_Status In ('Churned', 'Stayed');


CREATE VIEW joined_view AS
	SELECT * FROM customer_data WHERE Customer_Status = 'Joined';

