
    SELECT
    date_date,
    COUNT(DISTINCT orders_id) AS nb_of_transaction,
    ROUND(SUM(revenue),2) as revenue,
    ROUND(SUM(margin),2) AS margin,
    ROUND(SUM(operational_margin),2) AS operational_margin,
    ROUND(SUM(purchase_cost),2) AS purchase_cost,
    ROUND(SUM(ship_cost),2) AS shipping_cost,
    ROUND(SUM(logcost),2) AS log_cost,
    ROUND(SUM(quantity),2) AS quantity,
    ROUND(SUM(revenue)/ NULLIF(COUNT(DISTINCT orders_id),0),2) AS avg_basket
    FROM {{ref("int_orders_operational")}}
    GROUP BY date_date
    ORDER BY date_date DESC
