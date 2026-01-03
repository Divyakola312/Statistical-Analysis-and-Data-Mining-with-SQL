-- =====================================================
-- File: views.sql
-- Description: Views for data summarization
-- =====================================================

CREATE OR REPLACE VIEW customer_purchase_summary AS
SELECT
    b.customer_id,
    COUNT(*) AS total_transactions,
    SUM(b.basket_count) AS total_items_purchased,
    ROUND(AVG(b.basket_count), 2) AS avg_items_per_transaction
FROM baskets b
GROUP BY b.customer_id;
