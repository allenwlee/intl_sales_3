

User.create(email: "allenwlee@yahoo.com", password: 'password', username: 'allenwlee', type: "pro")
User.create(email: "allen@quantma.com", password: 'password', username: 'allen', type: "general")

genres = %w(Horror Comedy Romance Thriller Action Adventure Drama)
genres.each do |g|
  Genre.create(data: g)
end

territories = []
CSV.foreach('territories.csv') do |row|
  territories << row[0]
end

territories.each do |t|
  Territory.create(name: t)
end

media = []
CSV.foreach('media.csv') do |row|
  media << row[0]
end

media.each do |m|
  Medium.create(name: m)
end


Project.create(user_id: 1, title: "The Deadly Hacker Attack", budget_size: 10_000_000)
Project.find(1).genres << Genre.find(rand(5)+1)
Project.find(1).genres << Genre.find(rand(5)+1)

Sale.create(project_id: 1, ask: 300_000, bid: 200_000, close: 250_000, close_date: Time.now)

Sale.create(project_id: 1, ask: 1_800_000, bid: 1_600_000, close: 1_750_000, close_date: Time.now)

Sale.find(1).territories << Territory.find(rand(241)+1)
Sale.find(1).territories << Territory.find(rand(241)+1)

Sale.find(1).media << Medium.find(rand(10)+1)
Sale.find(1).media << Medium.find(rand(10)+1)
