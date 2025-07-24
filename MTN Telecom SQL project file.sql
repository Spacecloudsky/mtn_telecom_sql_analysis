Select * from telecom_customers
-- Telecom Data Analysis for MTN Nigeria
-- Dataset: telecom_customers

-- 1. Customer Segmentation
--  Group customers by age, gender, state, and plan types to identify usage 
-- patterns.
SELECT age, count(*)
FROM telecom_customers
GROUP BY age
Order by age desc;

SELECT 
    gender, state, plan_type,
    CASE 
        WHEN age BETWEEN 18 AND 25 THEN '18-25'
        WHEN age BETWEEN 26 AND 35 THEN '26-35'
        WHEN age BETWEEN 36 AND 45 THEN '36-50'
        ELSE '50+' 
    END AS age_group,
  COUNT(*) AS customer_count,
  AVG(data_usage_mb) AS avg_data_usage,
  AVG(voice_usage_minutes) AS avg_voice_usage,
  AVG(sms_count) AS avg_sms
FROM telecom_customers
GROUP BY age_group, gender, state, plan_type
ORDER BY customer_count DESC;

-- 2. Churn Risk Analysis
-- Identify customers with overdue or unpaid bills who haven’t used services 
-- recently. 
SELECT 
  customer_id,
  full_name,
  payment_status,
  data_usage_mb,
  voice_usage_minutes,
  sms_count
FROM telecom_customers
WHERE payment_status IN ('Unpaid', 'Overdue')
  AND (
    data_usage_mb = 0 AND 
    voice_usage_minutes = 0 AND 
    sms_count = 0
  );
--Result shows that there are no customers who have not used services.

-- 3. Top Users & Revenue Contributors
-- Top Users
SELECT 
  customer_id,
  full_name,
  data_usage_mb,
  voice_usage_minutes,
  sms_count
FROM telecom_customers
ORDER BY data_usage_mb DESC, voice_usage_minutes DESC, sms_count DESC
LIMIT 10;

-- Top Revenue Contributors
SELECT 
  customer_id,
  full_name,
  SUM(bill_amount) AS total_billed
FROM telecom_customers
GROUP BY customer_id, full_name
ORDER BY total_billed DESC
LIMIT 10;

-- 4. KYC Compliance Check
SELECT 
  kyc_status,
  COUNT(*) AS total_users,
  SUM(CASE WHEN payment_status IN ('Overdue', 'Unpaid') THEN 1 ELSE 0 END) AS defaulters
FROM telecom_customers
GROUP BY kyc_status;

-- 5. Plan Performance Analysis
SELECT 
  plan_id,
  plan_name,
  plan_type,
  COUNT(DISTINCT customer_id) AS subscriber_count,
  SUM(bill_amount) AS total_revenue
FROM telecom_customers
GROUP BY plan_id, plan_name, plan_type
ORDER BY total_revenue DESC;

-- 6. Network Quality Evaluation
-- By State
SELECT 
  state,
  AVG(network_quality_score) AS avg_network_score,
  AVG(call_drop_rate) AS avg_drop_rate
FROM mtn_data
GROUP BY state
ORDER BY avg_network_score ASC, avg_drop_rate DESC;

-- By User
SELECT 
  customer_id,
  full_name,
  state,
  network_quality_score,
  call_drop_rate
FROM mtn_data
WHERE network_quality_score < 2 OR call_drop_rate > 10
ORDER BY network_quality_score ASC, call_drop_rate DESC;

-- 7. Payment Behavior Trends
-- Common Payment Methods
SELECT 
  payment_method,
  COUNT(*) AS usage_count
FROM mtn_data
GROUP BY payment_method
ORDER BY usage_count DESC;

-- Frequent Defaulters
SELECT 
  customer_id,
  full_name,
  COUNT(*) AS default_count
FROM mtn_data
WHERE payment_status IN ('Overdue', 'Unpaid')
GROUP BY customer_id, full_name
ORDER BY default_count DESC
LIMIT 10;

-- 8. Customer Support Demand Analysis
SELECT 
  customer_id,
  full_name,
  support_tickets_count,
  customer_satisfaction
FROM mtn_data
WHERE support_tickets_count >= 3
ORDER BY support_tickets_count DESC, customer_satisfaction ASC;

-- 9. Customer Loyalty and Referrals
SELECT 
  customer_tier,
  AVG(referrals_made) AS avg_referrals,
  SUM(referrals_made) AS total_referrals
FROM mtn_data
GROUP BY customer_tier
ORDER BY total_referrals DESC;

-- 10. Device Usage Patterns
SELECT 
  device_type,
  os_type,
  COUNT(*) AS user_count
FROM mtn_data
GROUP BY device_type, os_type
ORDER BY user_count DESC;
