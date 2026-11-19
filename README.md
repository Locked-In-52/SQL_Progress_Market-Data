# SQL_Progress_Market-Data
Learning SQL through real market data, one week at a time.

## Data
- Dataset: BTCUSDT spot trades, <your file date>
- Source: data.binance.vision > spot > daily > trades > BTCUSDT
- Steps: download the zip, then import into MySQL as table `binance_data_4`

## Week 1: Basics
- File: `queries/week1_basic_codes.sql`
- Skills: SELECT, WHERE, ORDER BY, GROUP BY, CASE WHEN, VWAP
- VWAP = SUM(price * qty) / SUM(qty), which weights price by trade size

## Results
- Total trades: 1,691
- VWAP: 64918.40752058365
