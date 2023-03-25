#!/bin/bash

URL="https://moning.co/stocks/AAPL.US"
OUTPUT_FILE="price_data.csv"

# Fetch the webpage content
HTML_CONTENT=$(curl -s $URL)

# Extract the required information using regex
PRICE=$(echo "$HTML_CONTENT" | grep -oE 'canvas id="priceChart"[^>]+>' | sed 's/&quot;//g' | grep -oP 'data-graph="\[\K.*?(?=\]".*data-currency="USD")' | grep -oP '\{x:\K[0-9-]+|y:\K[0-9.]+(?=\})' | paste -d ',' - -)

# Append the price and timestamp to the CSV file
echo "$(date), $PRICE" > $OUTPUT_FILE

# Remove the first line (if it contains unwanted text) from the CSV file
tail -n +2 "$OUTPUT_FILE" > "temp.csv" && mv "temp.csv" "$OUTPUT_FILE"
