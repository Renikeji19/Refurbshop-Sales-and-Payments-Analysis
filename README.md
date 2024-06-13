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

- Consistent Top Performers:

The merchants 474562, 90760985794, 33230963385, 31315447818, and 13312053010 consistently rank among the top 5 in total sales across all three countries: Germany, Spain, and France. This indicates strong and consistent performance across multiple regions.

- High Sales Figures:

Merchant 474562 consistently achieved the highest sales figures in each country, with a significant lead over other merchants, highlighting their strong market presence and successful sales strategies.


#### Tableau Analysis

1. What is the failure rate for each payment method on the platform?

![image](https://github.com/Renikeji19/Refurbshop-Sales-and-Payments-Analysis/assets/97131888/7cd265c0-2aa3-4f78-82fa-8a86696b0204)

- Payment Methods with High Failure Rates: The methods like oney12x, klarna_s, oney4x, giropay, oney3x, and klarna_p exhibit extremely high failure rates, suggesting potential issues that may need addressing such as technical difficulties, user error, or other barriers preventing successful transactions.

- Reliability of Traditional Methods: Traditional methods like card payments and PayPal have significantly lower failure rates, indicating higher reliability and possibly better user experience or better-established infrastructure.

2. Timeseries of Failure Rate

![image](https://github.com/Renikeji19/Refurbshop-Sales-and-Payments-Analysis/assets/97131888/490da491-a05f-48d4-89a7-e08528e5c3ca)

- Fluctuating Failures: The number of failed payment attempts does not show a consistent upward or downward trend but fluctuates daily.
- Spike on November 5: There is a notable spike in payment failures on November 5, suggesting an issue that may have occurred on this specific day.
- General Stability: Despite the fluctuations, the daily number of failed attempts remains within a relatively narrow range of 7.45K to 8.30K.

3. What are the top selling electronic brands on the platform?
   
![image](https://github.com/Renikeji19/Refurbshop-Sales-and-Payments-Analysis/assets/97131888/02a521b2-fa4e-497b-99c0-48a5116893e2)

Apple is the dominant brand in the refurbished electronics marketplace on Backmarket, with total sales of 25.60 million Euros. This indicates strong consumer demand and preference for refurbished Apple products.

##### Tableau Dashboard

![image](https://github.com/Renikeji19/Refurbshop-Sales-and-Payments-Analysis/assets/97131888/a61cf6e7-77a3-439f-8f1d-63acade86fa3)


### 6. Recommendations

#### Payment Failures

Investigate and Address Issues: It's crucial to investigate the underlying reasons for the high failure rates in payment methods like oney12x, klarna_s, and others to improve their reliability.

Promote Reliable Methods: Encourage customers to use more reliable methods like card payments and PayPal, especially if they are experiencing issues with other methods.

User Support and Education: Providing better support and clear instructions for using the problematic payment methods may help in reducing the failure rates. Customers with high numbers of failed payment attempts and high failure rates may need targeted support or intervention to resolve payment issues

By focusing on improving the reliability of high-failure payment methods and promoting the use of more reliable ones, overall payment success rates can be enhanced, leading to better customer satisfaction and potentially higher sales.

#### Merchants

Understanding what drives the success of the top-performing merchants could provide valuable insights for other merchants looking to improve their sales performance. This could involve analyzing marketing strategies, customer engagement practices, product offerings, and pricing strategies.

#### Brands

- Encourage positive customer reviews and ratings to build trust and credibility in the refurbished products sold on Backmarket.
- Merchants need to Work closely with Refurbshop to ensure high standards of refurbishment and customer service, enhancing overall customer satisfaction and loyalty.








