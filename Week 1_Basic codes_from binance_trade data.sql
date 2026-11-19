Select *
From binance_data_4;

# 1. Look at the data (SELECT, LIMIT)
SELECT *
FROM binance_data_4
LIMIT 10;

# 2. Count the trades (COUNT)
	SELECT COUNT(*)
	AS total_trades
	FROM binance_data_4;

#3. Large trades only (WHERE)
Select trade_id, price, qty
FROM binance_data_4 as binance
WHERE qty > 1;

#4.Top 10 biggest trades (ORDER BY)
SELECT trade_id, price, qty
FROM binance_data_4
ORDER BY qty DESC
LIMIT 10;

#5 Day high, low and average price (MIN, MAX, AVG)
SELECT MIN(price) AS day_low,
       MAX(price) AS day_high,
       AVG(price) AS avg_price
FROM binance_data_4;

#6 Total volume traded (SUM)
SELECT SUM(qty) AS total_volume 
FROM binance_data_4;

#7 Total addition of quote_qty (SUM)
SELECT SUM(quote_qty) AS sum_of_quote
FROM binance_data_4;

# 8 VWAP: price weighted by size, not a plain average
SELECT SUM(price * qty) / SUM(qty) AS vwap 
FROM binance_data_4;

#9 Trades and volume per side (GROUP BY)
SELECT is_buyer_maker,
COUNT(*) AS trades,
SUM(qty) AS volume
FROM binance_data_4
GROUP BY is_buyer_maker;

#10 Label trades by size (CASE WHEN)
SELECT trade_id, qty,
CASE WHEN qty >= 1   THEN 'Large'
WHEN qty >= 0.1 THEN 'Medium'
ELSE 'Small' END AS trade_size
FROM binance_data_4
LIMIT 20;

