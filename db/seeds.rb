Admin.create(email: 'admin@example.com', name: 'Admin User', password: "1234567a")
puts "1 admin user created!"

User.create(email: 'user@example.com', name: 'Standard User', password: "1234567a")
puts "1 standard user created!"