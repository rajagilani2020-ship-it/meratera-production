import time
from mt5linux import MetaTrader5

# Connect to MT5 running inside the container
mt5 = MetaTrader5(host='127.0.0.1', port=8001)

if not mt5.initialize():
    print("Failed to connect to MT5:", mt5.last_error())
else:
    print("Connected to MT5 on Railway!")
    print("Account Info:", mt5.account_info())

# Your trading bot loop
while True:
    print("Bot is active...")
    time.sleep(60)
