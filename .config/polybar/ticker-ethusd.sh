#!/bin/sh

rate=$(curl -sf https://api.kraken.com/0/public/Ticker?pair=XETHZUSD | jq -r ".result.XETHZUSD.c[0]")
# if (( $(echo "$rate ==[ "$rate" -eq 0 ]; then
    # exit 0
# fi
rate=$(LANG=C printf "%.2f" "$rate")
symbol=$(echo -ne '\xEE\x81\x98')
echo "$symbol $rate"
