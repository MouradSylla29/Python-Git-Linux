html=$(curl -s https://moning.co/stocks/AAPL.US | grep -oE 'canvas id="priceChart"[^>]+>' | sed 's/&quot;//g' | grep -oP 'data-graph="\[\K.*?(?=\]".*data-currency="USD")' | grep -oP '\{x:\K[0-9-]+|y:\K[0-9.]+(?=\})' | paste -d ',' - -)
price=$(echo "$html")
echo "$price"


