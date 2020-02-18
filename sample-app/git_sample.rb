puts "hello"
puts 3 + 4

puts <<~TEXT

こんにちは

志村です

よろしくお願いします

SELECT * FROM USERS:

TEXT

users = ["saitou", "taira", "yamada", "hayashi"]

users.each do |user|
	puts users
end