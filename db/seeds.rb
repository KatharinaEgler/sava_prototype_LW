# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.destroy_all
Circle.destroy_all
StatusUpdate.destroy_all
Message.destroy_all
Conversation.destroy_all

# Main character
chloe = User.new(first_name: "Chloe", last_name: "Bretan", email: "chloe@email.com", password: "hospital", remote_photo_url: "https://res.cloudinary.com/dd9qabk1u/image/upload/v1567020979/sava/edward-cisneros-_H6wpor9mjs-unsplash_w0qgaa.jpg")
chloe.save!

# Members of conversations & circles
tom = User.new(first_name: "Tom", last_name: "Fischer", email: "tom@email.com", password: "hospital", remote_photo_url: "https://res.cloudinary.com/dd9qabk1u/image/upload/v1567030877/sava/josh-howard-6BI7fVlw_BA-unsplash_giluqv.jpg")
tom.save!
angela = User.new(first_name: "Marta", last_name: "Thompson", email: "marta@email.com", password: "hospital", remote_photo_url: "https://res.cloudinary.com/dd9qabk1u/image/upload/v1567030877/sava/josh-howard-6BI7fVlw_BA-unsplash_giluqv.jpg")
angela.save!
louise = User.new(first_name: "Louise", last_name: "Leroux", email: "louise@email.com", password: "hospital", remote_photo_url: "https://res.cloudinary.com/dd9qabk1u/image/upload/v1567031725/sava/kal-visuals-b1Hg7QI-zcc-unsplash_sjf9cd.jpg")
louise.save!
simon = User.new(first_name: "Simon", last_name: "Girand", email: "simon@email.com", password: "hospital", remote_photo_url: "https://res.cloudinary.com/dd9qabk1u/image/upload/v1567032762/sava/gus-moretta-xSOfm3S2QQg-unsplash_y1otfw.jpg")
simon.save!
charles = User.new(first_name: "Charles", last_name: "Miller", email: "charles@email.com", password: "hospital", remote_photo_url: "https://res.cloudinary.com/dd9qabk1u/image/upload/v1567032762/sava/yerling-villalobos-r-hssyiKimQ-unsplash_wmptf9.jpg")
charles.save!
manuel = User.new(first_name: "Manuel", last_name: "Smith", email: "manuel@email.com", password: "hospital", remote_photo_url: "https://res.cloudinary.com/dd9qabk1u/image/upload/v1567032763/sava/brooke-cagle-Nm70URdtf3c-unsplash_vzpdv2.jpg")
manuel.save!

message_1 = Message.new()
