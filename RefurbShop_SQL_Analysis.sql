USE Backmarket;

-- QUESTION 1: Write an SQL query which highlights customers who failed repeatedly
-- Subquery to calculate the total number of failed payment intentions and relevant dates for customers with more than one failed intention
SELECT 
    CLIENT_ID_ANONYMIZED as Customer_ID,
    COUNT(DISTINCT PAYMENT_INTENTION_ID) AS TotalFailedPaymentIntentions,
    TotalPaymentAttempts,
    MAX(DATE_CREATION) AS LastFailedPaymentIntentionDate,
    MIN(DATE_CREATION) AS FirstFailedPaymentIntentionDate    
FROM 
    (
        SELECT
            CLIENT_ID_ANONYMIZED,
            PAYMENT_INTENTION_ID,
            DATE_CREATION,
            STATE,
            COUNT(PAYMENT_ID) OVER (PARTITION BY CLIENT_ID_ANONYMIZED) AS TotalPaymentAttempts
        FROM
            PAYMENT_TABLE
    ) AS inner_query
WHERE 
    STATE = 0
GROUP BY 
    CLIENT_ID_ANONYMIZED, TotalPaymentAttempts
HAVING 
    COUNT(DISTINCT PAYMENT_INTENTION_ID) > 1
ORDER BY TotalFailedPaymentIntentions DESC;


-- QUESTION 2: Write an SQL query which highlights the top 5 merchants with the biggest sales (in €) per country
WITH TotalSales AS (
    SELECT 
        m.COUNTRY_CODE,
        o.MERCHANT_ID_ANONYMIZED,
        SUM(o.PRICE - IFNULL(p.AMOUNT, 0)) AS TotalSales
    FROM 
        ORDERLINE_TABLE o
    JOIN 
        MERCHANT_TABLE m ON o.MERCHANT_ID_ANONYMIZED = m.MERCHANT_ID_ANONYMIZED
    LEFT JOIN 
        PROMO_CODE_TABLE p ON o.PAYMENT_ID = p.PAYMENT_ID
    GROUP BY 
        m.COUNTRY_CODE, o.MERCHANT_ID_ANONYMIZED
),
RankedSales AS (
    SELECT 
        COUNTRY_CODE,
        MERCHANT_ID_ANONYMIZED,
        TotalSales,
        ROW_NUMBER() OVER (PARTITION BY COUNTRY_CODE ORDER BY TotalSales DESC) AS Merchantrank
    FROM 
        TotalSales
)
SELECT 
    COUNTRY_CODE,
    MERCHANT_ID_ANONYMIZED as Merchant_ID,
    ROUND(TotalSales, 2) AS TotalSales
FROM 
    RankedSales
WHERE 
    Merchantrank <= 5
ORDER BY 
    COUNTRY_CODE, TotalSales DESC;





