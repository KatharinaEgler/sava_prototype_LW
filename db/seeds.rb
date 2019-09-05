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
Notification.destroy_all

# Main character
chloe = User.new(first_name: "Chloe", last_name: "Leroux", email: "chloe@email.com", password: "hospital", remote_photo_url: "https://res.cloudinary.com/dd9qabk1u/image/upload/v1567657853/sava/jessica-to-oto-o--eO4eTRkDok-unsplash_eldkvu.jpg", sick_status: true)
chloe.save!

# Members of conversations & circles
tina = User.new(first_name: "Tina", last_name: "Leroux", email: "tina@email.com", password: "hospital", remote_photo_url: "https://res.cloudinary.com/dd9qabk1u/image/upload/v1567699806/nick-grant-ygrOmmn1Oss-unsplash_qgyibg.jpg", sick_status: false)
tina.save!
marta = User.new(first_name: "Marta", last_name: "Thompson", email: "marta@email.com", password: "hospital", remote_photo_url: "https://res.cloudinary.com/dd9qabk1u/image/upload/v1567037714/sava/daniil-kuzelev-AkGd_YB6Q2c-unsplash_pvtgst.jpg", sick_status: false)
marta.save!
louise = User.new(first_name: "Louise", last_name: "Leroux", email: "louise@email.com", password: "hospital", remote_photo_url: "https://res.cloudinary.com/dd9qabk1u/image/upload/v1567031725/sava/kal-visuals-b1Hg7QI-zcc-unsplash_sjf9cd.jpg", sick_status: false)
louise.save!
simon = User.new(first_name: "Simon", last_name: "Girand", email: "simon@email.com", password: "hospital", remote_photo_url: "https://res.cloudinary.com/dd9qabk1u/image/upload/v1567032762/sava/gus-moretta-xSOfm3S2QQg-unsplash_y1otfw.jpg", sick_status: false)
simon.save!
charles = User.new(first_name: "Charles", last_name: "Leroux", email: "charles@email.com", password: "hospital", remote_photo_url: "https://res.cloudinary.com/dd9qabk1u/image/upload/v1567032762/sava/yerling-villalobos-r-hssyiKimQ-unsplash_wmptf9.jpg", sick_status: false)
charles.save!
manuel = User.new(first_name: "Manuel", last_name: "Smith", email: "manuel@email.com", password: "hospital", remote_photo_url: "https://res.cloudinary.com/dd9qabk1u/image/upload/v1567657748/sava/bill-rpiO3N3Tp7o-unsplash_gwpu4p.jpg", sick_status: false)
manuel.save!

leonie = User.new(first_name: "Leonie", last_name: "Tremblay", email: "leonie@email.com", password: "hospital", remote_photo_url: "https://res.cloudinary.com/dd9qabk1u/image/upload/v1567037714/sava/christiana-rivers-O_XIvDy0pcs-unsplash_mmdebe.jpg", sick_status: false)
leonie.save!
philippe = User.new(first_name: "Philippe", last_name: "Bédard", email: "philippe@email.com", password: "hospital", remote_photo_url: "https://res.cloudinary.com/dd9qabk1u/image/upload/v1567037719/sava/norman-toth-lCVP-lu0kxk-unsplash_tb5odk.jpg", sick_status: false)
philippe.save!
paula = User.new(first_name: "Paula", last_name: "Ouellet", email: "paula@email.com", password: "hospital", remote_photo_url: "https://res.cloudinary.com/dd9qabk1u/image/upload/v1567031725/sava/kal-visuals-b1Hg7QI-zcc-unsplash_sjf9cd.jpg", sick_status: false)
paula.save!
denise = User.new(first_name: "Denise", last_name: "King", email: "denise@email.com", password: "hospital", remote_photo_url: "https://res.cloudinary.com/dd9qabk1u/image/upload/v1567037716/sava/allgo-an-app-for-plus-size-people-EiDHtqUilPU-unsplash_d1jpdc.jpg", sick_status: false)
denise.save!
michaela = User.new(first_name: "Michaela", last_name: "Jenson", email: "michaela@email.com", password: "hospital", remote_photo_url: "https://res.cloudinary.com/dd9qabk1u/image/upload/v1567037712/sava/kim-jones-EcldzGBAB0A-unsplash_prmgib.jpg", sick_status: false)
michaela.save!
sandra = User.new(first_name: "Sandra", last_name: "Carlson", email: "sandra@email.com", password: "hospital", remote_photo_url: "https://res.cloudinary.com/dd9qabk1u/image/upload/v1567037703/sava/freestocks-org-9UVmlIb0wJU-unsplash_daqrna.jpg", sick_status: false)
sandra.save!

rita = User.new(first_name: "Rita", last_name: "Miller", email: "rita@email.com", password: "hospital", remote_photo_url: "https://res.cloudinary.com/dd9qabk1u/image/upload/v1567037696/sava/gerardo-marrufo-UBA06UPiVaw-unsplash_puf0ec.jpg", sick_status: false)
rita.save!
sophie = User.new(first_name: "Sophie", last_name: "McSimons", email: "sophie@email.com", password: "hospital", remote_photo_url: "https://res.cloudinary.com/dd9qabk1u/image/upload/v1567037701/sava/marcelo-matarazzo-WKxWQg7tZoU-unsplash_ugi0am.jpg", sick_status: false)
sophie.save!

# additional seeds

linn = User.new(first_name: "Linn", last_name: "Beaulieu", email: "linn@email.com", password: "hospital", remote_photo_url: "https://res.cloudinary.com/dd9qabk1u/image/upload/v1567037700/sava/jeshoots-com--2vD8lIhdnw-unsplash_rhacax.jpg", sick_status: false)
linn.save!
alexandre = User.new(first_name: "Alexandre", last_name: "Caron", email: "alexandre@email.com", password: "hospital", remote_photo_url: "https://res.cloudinary.com/dd9qabk1u/image/upload/v1567032763/sava/brooke-cagle-Nm70URdtf3c-unsplash_vzpdv2.jpg", sick_status: false)
alexandre.save!

wen = User.new(first_name: "Wen", last_name: "Lachance", email: "wen@email.com", password: "hospital", remote_photo_url: "https://res.cloudinary.com/dd9qabk1u/image/upload/v1567657806/sava/lau-keith-dcZsxUAAJXs-unsplash_umbmcx.jpg", sick_status: false)
wen.save!
gustave = User.new(first_name: "Gustave", last_name: "Schuhman", email: "gustave@email.com", password: "hospital", remote_photo_url: "https://res.cloudinary.com/dd9qabk1u/image/upload/v1567657841/sava/humphrey-muleba-cjWREdFXn90-unsplash_sflrfp.jpg", sick_status: false)
gustave.save!
maria = User.new(first_name: "Maria", last_name: "Kirkman", email: "maria@email.com", password: "hospital", remote_photo_url: "https://res.cloudinary.com/dd9qabk1u/image/upload/v1567020979/sava/edward-cisneros-_H6wpor9mjs-unsplash_w0qgaa.jpg", sick_status: false)
maria.save!



grandma = User.new(first_name: "Grandma", last_name: "Leroux", email: "grandma@email.com", password: "hospital", remote_photo_url: "https://res.cloudinary.com/dd9qabk1u/image/upload/v1567193591/sava/tiago-muraro-pwMds57bapI-unsplash_q8k9wq.jpg", sick_status: false)
grandma.save!



conversation_1 = Conversation.new(name: "Conversation between Chloe & Sandra")
conversation_1.save!

conversation_2 = Conversation.new(name: "Conversation between Chloe & Denise", updated_at: "Tue, 03 Sep 2019 13:45:56 UTC +00:00")
conversation_2.save!

# Group message

conversation_3 = Conversation.new(name: "Conversation between Chloe & Family", updated_at: "Mon, 02 Sep 2019 9:31:22 UTC +00:00")
conversation_3.save!

# ----

conversation_4 = Conversation.new(name: "Conversation between Chloe & Tina", updated_at: "Sun, 01 Sep 2019 11:37:56 UTC +00:00")
conversation_4.save!

conversation_5 = Conversation.new(name: "Conversation between Chloe & Philippe", updated_at: "Tue, 03 Sep 2019 21:35:16 UTC +00:00")
conversation_5.save!

conversation_6 = Conversation.new(name: "Conversation between Chloe & Marta", updated_at: "Thu, 05 Sep 2019 10:56:56 UTC +00:00")
conversation_6.save!

conversation_7 = Conversation.new(name: "Conversation between Chloe & Sophie", updated_at: "Fri, 30 Aug 2019 17:17:56 UTC +00:00")
conversation_7.save!

conversation_8 = Conversation.new(name: "Conversation between Chloe & Grandma")
conversation_8.save!


message_1 = Message.new(content: "It was so great seeing you. I want to see you as soon as possible again. I'll book a slot with sava then. The application is great.", user_id: sandra.id, conversation_id: conversation_1.id, created_at: "Mon, 02 Sep 2019 21:05:56 UTC +00:00")
message_1.save!
message_2 = Message.new(content: "They are really taking a long time with the test results.", user_id: sandra.id, conversation_id: conversation_1.id, created_at: "Mon, 02 Sep 2019 23:36:56 UTC +00:00")
message_2.save!
message_3 = Message.new(content: "Yes, the doctor is still waiting for the test results. Maybe I'll arrive an update this afternoon. I will post an update to my family and friends as soon as possible.", user_id: chloe.id, conversation_id: conversation_1.id, created_at: "Tue, 03 Sep 2019 14:45:56 UTC +00:00")
message_3.save!

message_4 = Message.new(content: "Hey! I will have quite some free time next week. I can easily visit you again? That would be so great.", user_id: sandra.id, conversation_id: conversation_1.id, created_at: "Fri, 06 Sep 2019 18:57:11 UTC +00:00" )
message_4.save!

message_5 = Message.new(content: "We miss you at work. We are thinking about you a lot.", user_id: denise.id, conversation_id: conversation_2.id, created_at: "Sat, 31 Aug 2019 11:57:11 UTC +00:00" )
message_5.save!

message_6 = Message.new(content: "Dear family, thanks again for your visit and your kind works. I'm so lucky to have you in my life.", user_id: chloe.id, conversation_id: conversation_3.id, created_at: "Mon, 02 Sep 2019 15:11:11 UTC +00:00")
message_6.save!

message_7 = Message.new(content: "🤗 have you met any handsome doctors yet? 😍 love you sweety 😍😍😍 🤕🤕🤕", user_id: grandma.id, conversation_id: conversation_8.id, created_at: "Fri, 06 Sep 2019 21:45:00 UTC +00:00")
message_7.save!

message_8 = Message.new(content: "Thanks you so much for the nice presents! 🤗 ", user_id: chloe.id, conversation_id: conversation_4.id, created_at: "Fri, 30 Aug 2019 23:57:11 UTC +00:00")
message_8.save!

message_8 = Message.new(content: "Your last update is so intense. I wish, I could have been there for you.", user_id: sophie.id, conversation_id: conversation_7.id, created_at: "Thu, 29 Aug 2019 14:22:11 UTC +00:00")
message_8.save!


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

conversation_member_11 = ConversationMember.new(conversation_id: conversation_8.id, user_id: chloe.id)
conversation_member_11.save!
conversation_member_12 = ConversationMember.new(conversation_id: conversation_8.id, user_id: grandma.id)
conversation_member_12.save!

conversation_member_13 = ConversationMember.new(conversation_id: conversation_4.id, user_id: chloe.id)
conversation_member_13.save!
conversation_member_14 = ConversationMember.new(conversation_id: conversation_4.id, user_id: tina.id)
conversation_member_14.save!

conversation_member_13 = ConversationMember.new(conversation_id: conversation_7.id, user_id: chloe.id)
conversation_member_13.save!
conversation_member_14 = ConversationMember.new(conversation_id: conversation_7.id, user_id: sophie.id)
conversation_member_14.save!

notification_1 = Notification.new(conversation_id: conversation_8.id, user_id: chloe.id)
notification_1.save!
notification_2 = Notification.new(conversation_id: conversation_1.id, user_id: chloe.id)
notification_2.save!


statusupdate_1 = StatusUpdate.new(user_id: chloe.id, title: "New doctor, new hospital", content: "I am at the other hospital now. The new doctor is also really nice and seems to be really good. Also, the nurses are very friendly. The room is ok, the old one was better though.", remote_photo_url: "https://res.cloudinary.com/dd9qabk1u/image/upload/v1567044667/sava/martha-dominguez-de-gouveia-ShJUYkshceY-unsplash_wkiz0n.jpg", created_at: "Mon, 02 Sep 2019 12:40:56 UTC +00:00")
statusupdate_1.save!
statusupdate_2 = StatusUpdate.new(user_id: chloe.id, title: "I broke my shoulder", content: "My x-rays look weird. In my last boost, I tripped, fell and hurt myself on the shoulder - really bad! Fortuneately, it hurts less that expected.", remote_photo_url: "https://res.cloudinary.com/dd9qabk1u/image/upload/v1567049628/sava/harlie-raethel-ouyjDk-KdfY-unsplash_jxc9b9.jpg", created_at: "Wed, 28 Aug 2019 20:30:56 UTC +00:00")
statusupdate_2.save!
statusupdate_3 = StatusUpdate.new(user_id: chloe.id, title: "Big day!", content: "So, yes - big day! I start my new meds today. There's an exhaustive list of side effects including flushing, abdominal pain, diarrhea, vomiting, rashing, nausea and the list goes on. Reading about it is so different than living the side effects, so far nothing yet in the past hour. Keep your fingers crossed. ", remote_photo_url: "https://res.cloudinary.com/dd9qabk1u/image/upload/v1567118763/sava/anastasiia-ostapovych-YgeTHz0wspk-unsplash_tuykps.jpg", created_at: "Thu, 29 Aug 2019 09:55:56 UTC +00:00")
statusupdate_3.save!
statusupdate_4 = StatusUpdate.new(user_id: chloe.id, title: "My arm hurts", content: " I got rid of the tube in my arm today. It hurts all the time. They will set me a new tube tomorrow, so one day/night of freedom.", remote_photo_url: "https://res.cloudinary.com/dd9qabk1u/image/upload/v1567120091/sava/image2-2_jnoycf.jpg", created_at: "Sun, 01 Sep 2019 11:13:56 UTC +00:00")
statusupdate_4.save!
statusupdate_5 = StatusUpdate.new(user_id: chloe.id, title: "Hospital food", content: "A bunch of you have been asking what the food is like. Well, it is actually not that bad.", remote_photo_url: "https://res.cloudinary.com/dd9qabk1u/image/upload/v1567120097/sava/image1-1_zeqezv.jpg", created_at: "Fri, 30 Aug 2019 17:21:56 UTC +00:00")
statusupdate_5.save!
statusupdate_6 = StatusUpdate.new(user_id: chloe.id, title: "Daily life", content: "Hello everyone, I just wanted to give you an update of how I am. Days are really just doctors' appointments and waiting. I feel helpless. Doctors and nurses are nice though. I will go into more details very soon. Check out one of our treatments rooms, nothing special. They all look the same.", remote_photo_url: "https://res.cloudinary.com/dd9qabk1u/image/upload/v1567120091/sava/image1-2_a9oews.jpg", created_at: "Tue, 03 Sep 2019 20:46:56 UTC +00:00")
statusupdate_6.save!
statusupdate_7 = StatusUpdate.new(user_id: chloe.id, title: "Hospital roomie", content: "Quick update. I have a new hospital roomie now. She is nice. The doctors made a really tough procedure on her today. The PRP is injected into the damaged tissue or joint. It takes about 60 to 90 minutes to make and inject PRP. For tendon or ligament conditions, in addition to the PRP injection, the needle may be used to break up scar tissue and adhesions. This is called a tenotomy or fasciotomy. She was is so much pain. I almost cried.", remote_photo_url: "https://res.cloudinary.com/dd9qabk1u/image/upload/v1567120092/sava/image2-1_d54ti2.jpg", created_at: "Wed, 04 Sep 2019 23:15:56 UTC +00:00")
statusupdate_7.save!
statusupdate_8 = StatusUpdate.new(user_id: chloe.id, title: "Pain", content: "I have this little guy on me for the next ten days. It's a catheter bit it looks really weird. Nurses must've played a prank when they strapped the bandage on. Fucking hurt though to put that. I got stabbed in the neck with local anesthesia and then had the worst ten minutes. The catheter is for my immunoabsorption therapy which involves blood cleansing to get rid of the autoimmunebodies. The blood that gets cleaned gets returned back to me. Kinda cool. While my cortisone therapies did help, this would just make me recover faster from my relapse. I was breaking down a lot on the weekend for fear of this therapy. But its a lot better than I expected and the road to recovery seems a lot closer. Plus, I have something to laugh about when I look at the mirror now.", remote_photo_url: "https://res.cloudinary.com/dd9qabk1u/image/upload/v1567120091/sava/image3_avbrmz.jpg", created_at: "Thu, 05 Sep 2019 18:29:56 UTC +00:00")
statusupdate_8.save!


slot_1 = Slot.new(date: "09.09.2019", hour: 9, booked: true, user_id: chloe.id, booker_id: michaela.id, location: "3801 Rue Université, Montréal")
slot_1.save!
slot_4 = Slot.new(date: "10.09.2019", hour: 10, booked: false, user_id: chloe.id, location: "3801 Rue Université, Montréal")
slot_2 = Slot.new(date: "09.09.2019", hour: 11, booked: false, user_id: chloe.id, location: "3801 Rue Université, Montréal")
slot_2.save!
slot_3 = Slot.new(date: "09.09.2019", hour: 15, booked: false, user_id: chloe.id, location: "3801 Rue Université, Montréal")
slot_3.save!
slot_4.save!
slot_5 = Slot.new(date: "10.09.2019", hour: 11, booked: false, user_id: chloe.id, location: "3801 Rue Université, Montréal")
slot_5.save!
slot_6 = Slot.new(date: "11.09.2019", hour: 11, booked: false, user_id: chloe.id, location: "3801 Rue Université, Montréal")
slot_6.save!
slot_7 = Slot.new(date: "11.09.2019", hour: 17, booked: false, user_id: chloe.id, location: "3801 Rue Université, Montréal")
slot_7.save!
slot_8 = Slot.new(date: "12.09.2019", hour: 15, booked: true, user_id: chloe.id, booker_id: marta.id, location: "3801 Rue Université, Montréal")
slot_8.save!
slot_9 = Slot.new(date: "12.09.2019", hour: 16, booked: true, user_id: chloe.id, booker_id: philippe.id, location: "3801 Rue Université, Montréal")
slot_9.save!


family = Circle.new(user_id: chloe.id, name: "Family")
family.save!
friends = Circle.new(user_id: chloe.id, name: "Friends")
friends.save!
colleagues = Circle.new(user_id: chloe.id, name: "Colleagues")
colleagues.save!

circleupdate_1 = CircleUpdate.new(circle_id: family.id, status_update_id: statusupdate_1.id)
circleupdate_1.save!
circleupdate_2 = CircleUpdate.new(circle_id: friends.id, status_update_id: statusupdate_1.id)
circleupdate_2.save!
circleupdate_2b = CircleUpdate.new(circle_id: colleagues.id, status_update_id: statusupdate_1.id)
circleupdate_2b.save!
circleupdate_3 = CircleUpdate.new(circle_id: family.id, status_update_id: statusupdate_2.id)
circleupdate_3.save!
circleupdate_3b = CircleUpdate.new(circle_id: friends.id, status_update_id: statusupdate_2.id)
circleupdate_3b.save!
circleupdate_4 = CircleUpdate.new(circle_id: family.id, status_update_id: statusupdate_3.id)
circleupdate_4b = CircleUpdate.new(circle_id: friends.id, status_update_id: statusupdate_3.id)
circleupdate_4.save!
circleupdate_5 = CircleUpdate.new(circle_id: family.id, status_update_id: statusupdate_4.id)
circleupdate_5.save!
circleupdate_5 = CircleUpdate.new(circle_id: friends.id, status_update_id: statusupdate_4.id)
circleupdate_5.save!

circleupdate_6 = CircleUpdate.new(circle_id: family.id, status_update_id: statusupdate_5.id)
circleupdate_6.save!
circleupdate_6b = CircleUpdate.new(circle_id: friends.id, status_update_id: statusupdate_5.id)
circleupdate_6b.save!
circleupdate_6c = CircleUpdate.new(circle_id: colleagues.id, status_update_id: statusupdate_5.id)
circleupdate_6c.save!

circleupdate_7 = CircleUpdate.new(circle_id: family.id, status_update_id: statusupdate_6.id)
circleupdate_7.save!
circleupdate_7b = CircleUpdate.new(circle_id: friends.id, status_update_id: statusupdate_6.id)
circleupdate_7b.save!
circleupdate_7c = CircleUpdate.new(circle_id: colleagues.id, status_update_id: statusupdate_6.id)
circleupdate_7c.save!


circleupdate_8 = CircleUpdate.new(circle_id: family.id, status_update_id: statusupdate_7.id)
circleupdate_8.save!
circleupdate_8b = CircleUpdate.new(circle_id: friends.id, status_update_id: statusupdate_7.id)
circleupdate_8b.save!
circleupdate_9 = CircleUpdate.new(circle_id: family.id, status_update_id: statusupdate_8.id)
circleupdate_9.save!

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
family_member_6 = CircleMember.new(circle_id: family.id, email: tina.email)
family_member_6.save!
family_member_7 = CircleMember.new(circle_id: family.id, email: alexandre.email)
family_member_7.save!

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
friends_member_7 = CircleMember.new(circle_id: friends.id, email: maria.email)
friends_member_7.save!
friends_member_8 = CircleMember.new(circle_id: friends.id, email: wen.email)
friends_member_8.save!

colleagues_member_1 = CircleMember.new(circle_id: colleagues.id, email: denise.email)
colleagues_member_1.save!
colleagues_member_2 = CircleMember.new(circle_id: colleagues.id, email: simon.email)
colleagues_member_2.save!
colleagues_member_3 = CircleMember.new(circle_id: colleagues.id, email: linn.email)
colleagues_member_3.save!
colleagues_member_4 = CircleMember.new(circle_id: colleagues.id, email: gustave.email)
colleagues_member_4.save!


p "Seeds created"
