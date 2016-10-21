namespace :db do
  desc "Create default admin account"
  task admin: :environment do
    admin = User.create(
      name: "Admin",
      email: "admin@example.com",
      password: "123456",
      is_admin: true
    )
  end
end
