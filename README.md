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









