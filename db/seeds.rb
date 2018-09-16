# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

  [0..100].each do |i|
    # @user = User.create(:name => "name#{i}", etc...)
    @user = User.new
    @user.email = 'test#{i}@example.com'
    @user.password = '#{i}aaaaaa'
    @user.save!
    @food = @user.foods.build(:name => "#{i}aaa")

    end