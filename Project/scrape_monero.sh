#!/bin/bash

# Set the name of the CSV file
csv_file="monero_prices.csv"

# Use date command to get current date and time in YYYY-MM-DD HH:MM:SS format
current_time=$(date +"%Y-%m-%d %H:%M:%S")

# Use curl to make a GET request to the CoinGecko API
response=$(curl -s -H "Accept: application/json" "https://api.coingecko.com/api/v3/simple/price?ids=monero&vs_currencies=usd")

# Parse the response to extract the price of Monero in USD
price=$(echo $response | jq -r '.monero.usd')

# Append the price and current time to the CSV file
echo "$current_time,$price" >> "$csv_file"

# Print the price and time to the console
echo "Monero Price: $price USD at $current_time"
