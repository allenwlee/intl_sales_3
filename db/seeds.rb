User.create(email: "allenwlee@yahoo.com", password: 'password', username: 'allenwlee', type: "pro")


genres = %w(Horror Comedy Romance Thriller Action Adventure Drama)
genres.each do |g|
  Genre.create(data: g)
end

Project.create(user_id: 1, title: "The Deadly Hacker Attack", budget_size: 10_000_000)
Project.find(1).genres << Genre.find(1)
Project.find(1).genres << Genre.find(2)

Sale.create(project_id: 1, territory: 'USA', ask: 1000, bid: 800, close: 650, close_date: Time.now)

TerritoryHistory.create(sale_id: 1, data: 'USA')

BidHistory.create(sale_id: 1, data: 800)

AskHistory.create(sale_id: 1, data: 1000)

CloseHistory.create(sale_id: 1, data: 650)

CloseDateHistory.create(sale_id: 1, data: DateTime.now)

Sale.find(1).update_attributes(ask: 900, bid: 850, close: 500, close_date: Time.now)

