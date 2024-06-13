## Refurbshop-Sales-and-Payments-Analysis

![image](https://github.com/Renikeji19/Refurbshop-Sales-and-Payments-Analysis/assets/97131888/e6b20716-5149-4809-8e62-ca98adad1ed9)

## AUTHOR

ADEPEJU SHITTU

### 1. Introduction
Refurbshop is a global marketplace for refurbished devices that provides a marketplace for third-party sellers to sell discounted refurbished items to customers.
The analysis was carried out to uncover merchant sales and customer payment patterns in order to improve the payment process and increase customer retention.

### 2. Business Questions

•	Which customers had repeated payment failures?

• What is the failure rate for each payment method on the platform?

• Who are the top 5 merchants with the biggest sales (in €) per country?

• What are the top selling electronic brands on the platform?

### 3. Data Overview and Data Cleaning
4 datasets were provided for the period of November 2020 to answer these questions, namely;

•	Orderline table: details of individual order lines (items) within customer orders.
• Merchant table : details about merchants who sell products on the platform and their method of payment receipt.
• Payment table : details of transaction payments and payment intentions for orders.
• Promo code table: contains information about promotional discounts offered on specific products to customers.

Key variables used in this analysis include Date, Price, Merchant ID, Customer ID, Promo amount, Payment method, Country, Payment ID, Payment Intention and State. The data dictionary is attached in the files section.

![image](https://github.com/Renikeji19/Refurbshop-Sales-and-Payments-Analysis/assets/97131888/a9151954-9d33-4491-9e0b-486b77165800)

The following steps were applied to clean the data for analysis:  
1. The duplicate rows were removed.
2. After checking, there were no missing values in the dataset.
3. The data types for each column were updated.
4. Inconsistent Entries were corrected by standardizing entries in each column.
5. Leading or trailing spaces in the text fields were removed.

### 4. Analysis and Findings

#### SQL Analysis

1. Which customers had repeated payment failures?

![image](https://github.com/Renikeji19/Refurbshop-Sales-and-Payments-Analysis/assets/97131888/d531749e-de21-4ba6-82ea-5f7c04c1bfbf)

The following observations can be made from the results:

- Top Customers with Payment Failures:

The customer with customer_id 488700216 had the highest number of failed payment intentions, totaling 7 failed attempts, with the first failure recorded on 11/2/20 at 8:49 PM and the last on 11/6/20 at 8:22 PM. This customer also had a total of 25 payment attempts, indicating persistent payment issues. 

- Total Payment Attempts vs. Failed Attempts:

The ratio of total payment attempts to failed attempts varies among customers. For instance, Customer_id 499251648 had 4 failed attempts out of 5 total payment attempts, suggesting a high failure rate.
Conversely, Customer_id 75335916 had 3 failed attempts out of 28 total payment attempts, indicating a lower failure rate but still highlighting multiple failures.

- First and Last Failure Dates:

The date and time of first and last failed payment intentions provide insight into the frequency and duration of payment issues. For example, Customer_id 40934592 had the first failed attempt on 11/3/20 at 8:57 AM and the last on 11/6/20 at 7:07 PM, showing a span of repeated issues over 3 days. This is indicative of potential systemic issues or customer-specific payment problems that need further investigation.

2. Who are the top 5 merchants with the biggest sales (in €) per country?

![image](https://github.com/Renikeji19/Refurbshop-Sales-and-Payments-Analysis/assets/97131888/a12efcfa-7b85-4215-88d2-7e198066b086)


   

#### Tableau Dashboard
![image](https://github.com/Renikeji19/Refurbshop-Sales-and-Payments-Analysis/assets/97131888/a61cf6e7-77a3-439f-8f1d-63acade86fa3)




#### Monthly Sales and Order Quantities
Product orders and sales is highest in the first quarter, particularly in March. The latter half of the year sees a continuous drop in performance, with the lowest point in December.
This indicates that the store experiences strong seasonality, with significant peaks in early spring and notable declines towards the end of the year.

![image](https://github.com/Renikeji19/Vrinda-Store-Data-Analysis/assets/97131888/608ff617-adac-43c3-a83b-b54eb98784ad)

#### Most Common Categories of items
The analysis of the "Category" column indicates that 'Set', 'Kurta', and 'Western Dress' are the most frequently appearing product categories.

![image](https://github.com/Renikeji19/Vrinda-Store-Data-Analysis/assets/97131888/bb34f2ad-fb9b-4655-bdd1-8eb454ce109b)

#### Delivery Insights and Order Status
Items were predominantly delivered to major states such as Maharashtra, Karnataka, and Uttar Pradesh, with Maharashtra leading in sales volume.

![image](https://github.com/Renikeji19/Vrinda-Store-Data-Analysis/assets/97131888/45629a48-84b0-4b23-b328-7ebfff600ee3)


92% of orders wwere delivered, 3% orders returned, 2.7% cancelled and 1.67% orders refunded.

![image](https://github.com/Renikeji19/Vrinda-Store-Data-Analysis/assets/97131888/01ddffaf-9dd0-413c-b3bb-8a2cee30286f)


#### Sales Demographics
The sales distribution by gender shows a higher purchasing trend among women (64%) compared to men (36%). 

![image](https://github.com/Renikeji19/Vrinda-Store-Data-Analysis/assets/97131888/0e1b5488-d8e7-4b63-8234-54a331381420)


For both genders, adult customers constitute the majority of the store's clientele.

![image](https://github.com/Renikeji19/Vrinda-Store-Data-Analysis/assets/97131888/21519aaf-fbf4-4bb8-9b66-1fc143d9bc1c)


#### Channel Analysis
Amazon, Myntra and Flipkart emerge as the leading channels for sales, suggesting a strong online consumer preference.

![image](https://github.com/Renikeji19/Vrinda-Store-Data-Analysis/assets/97131888/b361cef0-3f9d-4560-88e3-94eda4360153)


### 5. Conclusion
The analysis reveals that Vrinda Store has a strong market presence in major states with a diverse product range, predominantly purchased by adult women through major online platforms. 
The seasonal spikes in sales and the high rate of successful deliveries are indicative of effective operational and logistical capabilities.

### 6. Recommendations
- **Expand Product Range:** The store should increase inventory in high-demand categories such as 'Sets' and 'Kurta' during peak shopping seasons.
- **Marketing Focus:** Marketing efforts should be targeted more towards men and the stores online presence on Amazon, Mynra and Flipkart should be enhanced to capitalize on these channels' strong performance.
- **Customer Segmentation:** Targeted promotions and discounts should be developed for adult customers to maintain loyalty and increase customer lifetime value.
Actionable Insights:

Customers with high numbers of failed payment attempts and high failure rates may need targeted support or intervention to resolve payment issues.
Investigating the underlying causes of these failures (e.g., technical issues, payment method problems) can help in improving the payment success rate and enhancing customer satisfaction.








