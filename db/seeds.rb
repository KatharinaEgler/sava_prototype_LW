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
Slot.destroy_all
CircleMember.destroy_all
ConversationMember.destroy_all

# Main character
chloe = User.new(first_name: "Chloe", last_name: "Leroux", email: "chloe@email.com", password: "hospital", remote_photo_url: "https://res.cloudinary.com/dd9qabk1u/image/upload/v1567020979/sava/edward-cisneros-_H6wpor9mjs-unsplash_w0qgaa.jpg")
chloe.save!

# Members of conversations & circles
tom = User.new(first_name: "Tom", last_name: "Fischer", email: "tom@email.com", password: "hospital", remote_photo_url: "https://res.cloudinary.com/dd9qabk1u/image/upload/v1567030877/sava/josh-howard-6BI7fVlw_BA-unsplash_giluqv.jpg")
tom.save!
marta = User.new(first_name: "Marta", last_name: "Thompson", email: "marta@email.com", password: "hospital", remote_photo_url: "https://res.cloudinary.com/dd9qabk1u/image/upload/v1567037714/sava/daniil-kuzelev-AkGd_YB6Q2c-unsplash_pvtgst.jpg")
marta.save!
louise = User.new(first_name: "Louise", last_name: "Leroux", email: "louise@email.com", password: "hospital", remote_photo_url: "https://res.cloudinary.com/dd9qabk1u/image/upload/v1567031725/sava/kal-visuals-b1Hg7QI-zcc-unsplash_sjf9cd.jpg")
louise.save!
simon = User.new(first_name: "Simon", last_name: "Girand", email: "simon@email.com", password: "hospital", remote_photo_url: "https://res.cloudinary.com/dd9qabk1u/image/upload/v1567032762/sava/gus-moretta-xSOfm3S2QQg-unsplash_y1otfw.jpg")
simon.save!
charles = User.new(first_name: "Charles", last_name: "Leroux", email: "charles@email.com", password: "hospital", remote_photo_url: "https://res.cloudinary.com/dd9qabk1u/image/upload/v1567032762/sava/yerling-villalobos-r-hssyiKimQ-unsplash_wmptf9.jpg")
charles.save!
manuel = User.new(first_name: "Manuel", last_name: "Smith", email: "manuel@email.com", password: "hospital", remote_photo_url: "https://res.cloudinary.com/dd9qabk1u/image/upload/v1567032763/sava/brooke-cagle-Nm70URdtf3c-unsplash_vzpdv2.jpg")
manuel.save!

leonie = User.new(first_name: "Leonie", last_name: "Tremblay", email: "leonie@email.com", password: "hospital", remote_photo_url: "https://res.cloudinary.com/dd9qabk1u/image/upload/v1567037714/sava/christiana-rivers-O_XIvDy0pcs-unsplash_mmdebe.jpg")
leonie.save!
philippe = User.new(first_name: "Philippe-Alexandre", last_name: "Bédard", email: "philippe@email.com", password: "hospital", remote_photo_url: "https://res.cloudinary.com/dd9qabk1u/image/upload/v1567037719/sava/norman-toth-lCVP-lu0kxk-unsplash_tb5odk.jpg")
philippe.save!
paula = User.new(first_name: "Paula", last_name: "Ouellet", email: "paula@email.com", password: "hospital", remote_photo_url: "https://res.cloudinary.com/dd9qabk1u/image/upload/v1567031725/sava/kal-visuals-b1Hg7QI-zcc-unsplash_sjf9cd.jpg")
paula.save!
denise = User.new(first_name: "Denise", last_name: "King", email: "denise@email.com", password: "hospital", remote_photo_url: "https://res.cloudinary.com/dd9qabk1u/image/upload/v1567037716/sava/allgo-an-app-for-plus-size-people-EiDHtqUilPU-unsplash_d1jpdc.jpg")
denise.save!
michaela = User.new(first_name: "Michaela", last_name: "Jenson", email: "michaela@email.com", password: "hospital", remote_photo_url: "https://res.cloudinary.com/dd9qabk1u/image/upload/v1567037712/sava/kim-jones-EcldzGBAB0A-unsplash_prmgib.jpg")
michaela.save!
sandra = User.new(first_name: "Sandra", last_name: "Carlson", email: "sandra@email.com", password: "hospital", remote_photo_url: "https://res.cloudinary.com/dd9qabk1u/image/upload/v1567037703/sava/freestocks-org-9UVmlIb0wJU-unsplash_daqrna.jpg")
sandra.save!

rita = User.new(first_name: "Rita", last_name: "Miller", email: "rita@email.com", password: "hospital", remote_photo_url: "https://res.cloudinary.com/dd9qabk1u/image/upload/v1567037696/sava/gerardo-marrufo-UBA06UPiVaw-unsplash_puf0ec.jpg")
rita.save!
sophie = User.new(first_name: "Sophie", last_name: "McSimons", email: "sophie@email.com", password: "hospital", remote_photo_url: "https://res.cloudinary.com/dd9qabk1u/image/upload/v1567037701/sava/marcelo-matarazzo-WKxWQg7tZoU-unsplash_ugi0am.jpg")
sophie.save!

conversation_1 = Conversation.new(name: "Conversation between Chloe & Sandra")
conversation_1.save!

conversation_2 = Conversation.new(name: "Conversation between Chloe & Denise")
conversation_2.save!

# Group message

conversation_3 = Conversation.new(name: "Conversation between Chloe & Family")
conversation_3.save!

# ----

conversation_4 = Conversation.new(name: "Conversation between Chloe & Tom")
conversation_4.save!

conversation_5 = Conversation.new(name: "Conversation between Chloe & Philippe")
conversation_5.save!

conversation_6 = Conversation.new(name: "Conversation between Chloe & Marta")
conversation_6.save!

conversation_7 = Conversation.new(name: "Conversation between Chloe & Sophie")
conversation_7.save!


message_1 = Message.new(content: "It was so great seeing you. I want to see you as soon as possible again. I'll book a slot with sava then. The application is great.", user_id: sandra.id, conversation_id: conversation_1.id)
message_1.save!
message_2 = Message.new(content: "They are really taking a long time with the test results.", user_id: chloe.id, conversation_id: conversation_1.id)
message_2.save!
message_3 = Message.new(content: "Yes, the doctor is still waiting for the test results. Maybe I'll arrive an update this afternoon. I will post an update to the family group as soon as possible.", user_id: sandra.id, conversation_id: conversation_1.id)
message_3.save!

message_4 = Message.new(content: "We miss you at work. We are thinking about you a lot.", user_id: denise.id, conversation_id: conversation_2.id)
message_4.save!

message_5 = Message.new(content: "Dear family, thanks again for your visit and your kind works. I'm so lucky to have you in my life.", user_id: chloe.id, conversation_id: conversation_3.id)
message_5.save!


conversation_member_1 = ConversationMember.new(conversation_id: conversation_1.id, user_id: chloe.id)
conversation_member_1.save!
conversation_member_2 = ConversationMember.new(conversation_id: conversation_1.id, user_id: sandra.id)
conversation_member_2.save!
conversation_member_3 = ConversationMember.new(conversation_id: conversation_2.id, user_id: chloe.id)
conversation_member_3.save!
conversation_member_4 = ConversationMember.new(conversation_id: conversation_2.id, user_id: denise.id)
conversation_member_4.save!

# group message

conversation_member_5 = ConversationMember.new(conversation_id: conversation_3.id, user_id: chloe.id)
conversation_member_5.save!
conversation_member_6 = ConversationMember.new(conversation_id: conversation_3.id, user_id: marta.id)
conversation_member_6.save!
conversation_member_7 = ConversationMember.new(conversation_id: conversation_3.id, user_id: louise.id)
conversation_member_7.save!
conversation_member_8 = ConversationMember.new(conversation_id: conversation_3.id, user_id: simon.id)
conversation_member_8.save!
conversation_member_9 = ConversationMember.new(conversation_id: conversation_3.id, user_id: charles.id)
conversation_member_9.save!
conversation_member_10 = ConversationMember.new(conversation_id: conversation_3.id, user_id: manuel.id)
conversation_member_10.save!

# ----


statusupdate_1 = StatusUpdate.new(user_id: chloe.id, title: "New doctor, new hospital", content: "I am at the other hospital now. The new doctor is also really nice and seems to be really good. Also, the nurses are very friendly. The room is ok, the old one was better though.", remote_photo_url: "https://res.cloudinary.com/dd9qabk1u/image/upload/v1567044667/sava/martha-dominguez-de-gouveia-ShJUYkshceY-unsplash_wkiz0n.jpg")
statusupdate_1.save!
statusupdate_2 = StatusUpdate.new(user_id: chloe.id, title: "I broke my shoulder", content: "My x-rays look weird. In my last boost, I tripped, fell and hurt myself on the shoulder - really bad! Fortuneately, it hurts less that expected.", remote_photo_url: "https://res.cloudinary.com/dd9qabk1u/image/upload/v1567049628/sava/harlie-raethel-ouyjDk-KdfY-unsplash_jxc9b9.jpg")
statusupdate_2.save!


slot_1 = Slot.new(date: "09.09.2019", hour: 9, booked: true, user_id: chloe.id, booker_id: michaela.id)
slot_1.save!
slot_2 = Slot.new(date: "09.09.2019", hour: 11, booked: false, user_id: chloe.id)
slot_2.save!
slot_3 = Slot.new(date: "09.09.2019", hour: 15, booked: false, user_id: chloe.id)
slot_3.save!
slot_4 = Slot.new(date: "10.09.2019", hour: 10, booked: false, user_id: chloe.id)
slot_4.save!
slot_5 = Slot.new(date: "10.09.2019", hour: 11, booked: false, user_id: chloe.id)
slot_5.save!
slot_6 = Slot.new(date: "11.09.2019", hour: 11, booked: false, user_id: chloe.id)
slot_6.save!
slot_7 = Slot.new(date: "11.09.2019", hour: 17, booked: false, user_id: chloe.id)
slot_7.save!

family = Circle.new(user_id: chloe.id, name: "Family")
family.save!
friends = Circle.new(user_id: chloe.id, name: "Friends")
friends.save!
colleagues = Circle.new(user_id: chloe.id, name: "Colleagues")
colleagues.save!

#binding.pry

family_member_1 = CircleMember.new(circle_id: family.id, email: louise.email)
family_member_1.save!
family_member_2 = CircleMember.new(circle_id: family.id, email: philippe.email)
family_member_2.save!
family_member_3 = CircleMember.new(circle_id: family.id, email: charles.email)
family_member_3.save!
family_member_4 = CircleMember.new(circle_id: family.id, email: marta.email)
family_member_4.save!
family_member_5 = CircleMember.new(circle_id: family.id, email: michaela.email)
family_member_5.save!
family_member_6 = CircleMember.new(circle_id: family.id, email: tom.email)
family_member_6.save!

friends_member_1 = CircleMember.new(circle_id: friends.id, email: leonie.email)
friends_member_1.save!
friends_member_2 = CircleMember.new(circle_id: friends.id, email: paula.email)
friends_member_2.save!
friends_member_3 = CircleMember.new(circle_id: friends.id, email: manuel.email)
friends_member_3.save!
friends_member_4 = CircleMember.new(circle_id: friends.id, email: sandra.email)
friends_member_4.save!
friends_member_5 = CircleMember.new(circle_id: friends.id, email: rita.email)
friends_member_5.save!
friends_member_6 = CircleMember.new(circle_id: friends.id, email: sophie.email)
friends_member_6.save!

colleagues_member_1 = CircleMember.new(circle_id: colleagues.id, email: denise.email)
colleagues_member_1.save!
colleagues_member_2 = CircleMember.new(circle_id: colleagues.id, email: simon.email)
colleagues_member_2.save!


p "Seeds created"
