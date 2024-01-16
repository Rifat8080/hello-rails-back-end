# db/migrate/[timestamp]_create_greetings.rb

class CreateGreetings < ActiveRecord::Migration[6.1]
  def change
    create_table :greetings do |t|
      t.string :message

      t.timestamps
    end

    # Seed data
    Greeting.create(message: "Hello world")
    Greeting.create(message: "Hi")
    Greeting.create(message: "Hello, this is from rails backend")
    Greeting.create(message: "Hello, Have a good day")
    Greeting.create(message: "Hello to frontend")
  end
end
