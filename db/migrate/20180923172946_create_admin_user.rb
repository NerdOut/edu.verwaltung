class CreateAdminUser < ActiveRecord::Migration[5.2]
  def change
    User.create!(email: "admin@example.com", password: "admin1", admin: true)
  end
end
