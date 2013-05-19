# User.create(email: "allenwlee@yahoo.com", password: 'password')

# Sale.create(user_id: 1)

# User.find(1).sales.first

# Territory.create(sale_id: 1)

# TerritoryHistory.create(territory_id: 1, data: "USA")

# Bid.create(sale_id: 1)

# BidHistory.create(bid_id: 1, data: 50)

# Ask.create(sale_id: 1)

# AskHistory.create(ask_id: 1, data: 100)

# Close.create(sale_id: 1)

# CloseHistory.create(close_id: 1, data: 75)

# CloseDate.create(sale_id: 1)

CloseDateHistory.create(close_date_id: 1, data: DateTime.now)