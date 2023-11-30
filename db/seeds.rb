# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

require 'open-uri'
puts "Destroying database..."
Pin.destroy_all
User.destroy_all

#  puts "Creating user and pins [1]"
#  file = URI.open("https://i.gyazo.com/29e6387d82874fbeb285fa3979e07027.png")
#  user = User.create!(email: "celso@gmail.com", password: "celso123", username: "Celso")
#  user.avatar.attach(io: file, filename: "celso.png", content_type: "image/png")
#  user.save

#  file = URI.open("https://imageproxy.wolt.com/venue/627b59f13e69a533600fed96/58918384-dbf8-11ec-bc05-52ab4d82f101_______________closeup.jpg")
#  pin = Pin.create!(name: "Hungry Heaven", address: "〒153-0064 Tokyo, Meguro City, Shimomeguro, 1 Chome−2−22 セザール目黒 2F", latitude: 35.63409123108172, longitude: 139.71368136084774, comments: "Good burger", icon: "burger", rating: 4, visited: true, private: false, user: user)
#  pin.photo.attach(io: file, filename: "hungry_heaven.jpg", content_type: "image/jpg")
#  pin.save

#  file = URI.open("https://gourmand.tokyo/wp-content/uploads/2020/08/IMG_1611-1024x768.jpg")
#  pin = Pin.create!(name: "LAND", address: "〒153-0064 Tokyo, Meguro City, Shimomeguro, 2 Chome−21−28 セントヒルズ目黒 2F", latitude: 35.633201465597644, longitude: 139.7093625975676, comments: "Good curry", icon: "bowl-food", rating: 4.3, visited: false, private: true, user: user)
#  pin.photo.attach(io: file, filename: "land.jpg", content_type: "image/jpg")
#  pin.save

#  file = URI.open("https://i.gyazo.com/a72210b84fd62038d1a54556582db68d.png")
#  pin = Pin.create!(name: "JACK Meguro", address: "1 Chome-3-28 Shimomeguro, Meguro City, Tokyo 153-0064", latitude: 35.634379078062274, longitude: 139.71305695766375, comments: "Dartbar", icon: "fa-solid fa-beer-mug-empty", rating: 3, visited: false, private: false, user: user)
#  pin.photo.attach(io: file, filename: "jack_meguro.png", content_type: "image/png")
#  pin.save
#  # =============================
#  puts "Creating user and pins [2]"
#  file = URI.open("https://i.gyazo.com/0287e3a0df08d525fd8c2467338f0f60.png")
#  user = User.create!(email: "doug@hotmail.com", password: "doug123", username: "Dough")
#  user.avatar.attach(io: file, filename: "doug.png", content_type: "image/png")
#  user.save

#  file = URI.open("https://i.gyazo.com/be481929f75c188cc82a246b85362d3d.jpg")
#  pin = Pin.create!(name: "Sukiya", address: "3 Chome-9-3 Meguro, Meguro City, Tokyo 153-0063", latitude: 35.63297712068992, longitude: 139.7078577134912, comments: "Beef bowls", icon: "fa-solid fa-bowl-food", rating: 3.5, visited: true, private: true, user: user)
#  pin.photo.attach(io: file, filename: "sukiya.jpg", content_type: "image/jpg")
#  pin.save

#  file = URI.open("https://i.gyazo.com/464d377741d11ffda3285f3883ceca9e.png")
#  pin = Pin.create!(name: "Go Bring Slider SANDWICH HOUSE", address: "2 Chome-11-9 Meguro, Meguro City, Tokyo 153-0063", latitude: 35.63371719923141, longitude: 139.7080349, comments: "Good sliders", icon: "fa-solid fa-burger", rating: 4.2, visited: false, private: true, user: user)
#  pin.photo.attach(io: file, filename: "slider_house.png", content_type: "image/png")
#  pin.save

#  file = URI.open("https://i.gyazo.com/af07e6510da1a82411e537c9c4daf376.jpg")
#  pin = Pin.create!(name: "Pizza Giardino Savoy", address: "〒153-0064 Tokyo, Meguro City, Shimomeguro, 2 Chome−2−16 第６千陽ビル 101", latitude: 35.632202361865986, longitude: 139.71087045767248, comments: "Good pizza", icon: "fa-solid fa-pizza-slice", rating: 3.6, visited: true, private: false, user: user)
#  pin.photo.attach(io: file, filename: "pizza_giardino.jpg", content_type: "image/jpg")
#  pin.save

#  file = URI.open("https://i.gyazo.com/9676820b3bcb004f5ddf22fdbb1cda5f.jpg")
#  pin = Pin.create!(name: "Joint", address: "〒153-0063 Tokyo, Meguro City, Meguro, 3 Chome−11−6 リヨンドール目黒 １F", latitude: 35.63213092239773, longitude: 139.7064098558187, comments: "Good burger", icon: "fa-solid fa-burger", rating: 4.2, visited: true, private: false, user: user)
#  pin.photo.attach(io: file, filename: "joint.jpg", content_type: "image/jpg")
#  pin.save
#  # =============================
#  puts "Creating user and pins [3]"
#  file = URI.open("https://i.gyazo.com/6f2912259150c225cfc752be0c4bd8ba.png")
#  user = User.create!(email: "yann@gmail.com", password: "yann123", username: "Yann")
#  user.avatar.attach(io: file, filename: "yann.png", content_type: "image/png")
#  user.save

#  file = URI.open("https://i.gyazo.com/83f9e46b6ed9165119348f6986c13e54.jpg")
#  pin = Pin.create!(name: "Wagaya", address: "2 Chome-2-8 Shimomeguro, Meguro City, Tokyo 153-0064", latitude: 35.63203090245075, longitude: 139.71130711534505, comments: "Korean food", icon: "fa-solid fa-bowl-food", rating: 4.5, visited: false, private: true, user: user)
#  pin.photo.attach(io: file, filename: "wagaya.jpg", content_type: "image/jpg")
#  pin.save

#  file = URI.open("https://i.gyazo.com/5c5164fb24171629de5c1e509ab7cc0a.jpg")
#  pin = Pin.create!(name: "Tonkatsu Taihou", address: "1 Chome-6-15 Meguro, Meguro City, Tokyo 153-0063", latitude: 35.63451281885251, longitude: 139.71174804232749, comments: "Tonkatsu", icon: "fa-solid fa-bacon", rating: 3.4, visited: false, private: false, user: user)
#  pin.photo.attach(io: file, filename: "tonkatsu.jpg", content_type: "image/jpg")
#  pin.save

#  file = URI.open("https://i.gyazo.com/1658d8ee72ed4ad10d5914bd1ba77b1d.jpg")
#  pin = Pin.create!(name: "Bangkok Oriental Thai Restaurant", address: "1 Chome-3-1 Shimomeguro, Meguro City, Tokyo 153-0064", latitude: 35.63444597738727, longitude: 139.71333583069008, comments: "Thai food", icon: "fa-solid fa-bowl-food", rating: 4, visited: true, private: false, user: user)
#  pin.photo.attach(io: file, filename: "thai_restaurant.jpg", content_type: "image/jpg")
#  pin.save
#  # =============================
#  puts "Creating user and pins [4]"
#  file = URI.open("https://i.gyazo.com/0c9a4bdb449c588c01fe7193f1769135.png")
#  user = User.create!(email: "donald@outlook.com", password: "donald123", username: "Donald")
#  user.avatar.attach(io: file, filename: "donald.png", content_type: "image/png")
#  user.save

#  file = URI.open("https://i.gyazo.com/80039866a264ab5f201cb7e02b378c67.jpg")
#  pin = Pin.create!(name: "I-rottah", address: "1 Chome-5-21 Shimomeguro, Meguro City, Tokyo 153-0064", latitude: 35.6344643176884, longitude: 139.71243018650878, comments: "Italian restaurant", icon: "fa-solid fa-pizza-slice", rating: 3, visited: true, private: false, user: user)
#  pin.photo.attach(io: file, filename: "irottah.jpg", content_type: "image/jpg")
#  pin.save

#  file = URI.open("https://i.gyazo.com/36ed0af45b1ebae102d486323a743275.jpg")
#  pin = Pin.create!(name: "Shokumusō", address: "1 Chome-6-12 Meguro, Meguro City, Tokyo 153-0063", latitude: 35.63473299729209, longitude: 139.7121311, comments: "Chinese restaurant", icon: "fa-solid fa-bowl-food", rating: 4.5, visited: true, private: false, user: user)
#  pin.photo.attach(io: file, filename: "shokumuso.jpg", content_type: "image/jpg")
#  pin.save

#  file = URI.open("https://i.gyazo.com/d36454729bfdbbcc1e075c7961116677.jpg")
#  pin = Pin.create!(name: "Chuka Soba Takemura", address: "1 Chome-6-14 Meguro, Meguro City, Tokyo 153-0063", latitude: 35.63459191809312, longitude: 139.71181339999998, comments: "Ramen", icon: "fa-solid fa-bowl-food", rating: 2.2, visited: false, private: true, user: user)
#  pin.photo.attach(io: file, filename: "ramen.jpg", content_type: "image/jpg")
#  pin.save
#  # =============================
#  puts "Creating user and pins [5]"
#  file = URI.open("https://i.gyazo.com/6f0547b30c8f461480a9b321db813436.png")
#  user = User.create!(email: "trouni@yahoo.com", password: "trouni123", username: "Trouni")
#  user.avatar.attach(io: file, filename: "trouni.png", content_type: "image/png")
#  user.save

#  file = URI.open("https://i.gyazo.com/04763b3bf7f788c11ee42ca6de475894.jpg")
#  pin = Pin.create!(name: "Torikizoku Meguro Nishiguchi", address: "〒153-0064 Tokyo, Meguro City, Shimomeguro, 1 Chome−1−2 七幸ビル ４階", latitude: 35.63389327868364, longitude: 139.71419472883625, comments: "Izakaya", icon: "fa-solid fa-beer-mug-empty", rating: 3.8, visited: true, private: false, user: user)
#  pin.photo.attach(io: file, filename: "izakaya.jpg", content_type: "image/jpg")
#  pin.save

#  file = URI.open("https://i.gyazo.com/e82c5212e809301a1acae081b0ae179d.png")
#  pin = Pin.create!(name: "Midori", address: "2 Chome-13-41 Kamiosaki, Shinagawa City, Tokyo 141-0021", latitude: 35.63454305728192, longitude: 139.71719530185385, comments: "Izakaya", icon: "fa-solid fa-beer-mug-empty", rating: 4, visited: true, private: false, user: user)
#  pin.photo.attach(io: file, filename: "midori.png", content_type: "image/png")
#  pin.save
#  # =============================
#  puts "All done!"


# pitch seeds start here:
 puts "Creating user and pins.."
 file = URI.open("https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1695723076/rmhisb06nzp6wo17n6l3.jpg")
 user = User.create!(email: "chris@gmail.com", password: "password", username: "Chris")
 user.avatar.attach(io: file, filename: "chris.jpg", content_type: "image/jpg")
 user.save

 file = URI.open("https://imageproxy.wolt.com/venue/627b59f13e69a533600fed96/58918384-dbf8-11ec-bc05-52ab4d82f101_______________closeup.jpg")
 pin = Pin.create!(name: "Hungry Heaven", address: "〒153-0064 Tokyo, Meguro City, Shimomeguro, 1 Chome−2−22 セザール目黒 2F", latitude: 35.63409123108172, longitude: 139.71368136084774, comments: "Good burger", icon: "burger", rating: 4, visited: true, private: false, user: user, created_at: "Wed, 08 Mar 2023")
 pin.photo.attach(io: file, filename: "hungry_heaven.jpg", content_type: "image/jpg")
 pin.save

 file = URI.open("https://gourmand.tokyo/wp-content/uploads/2020/08/IMG_1611-1024x768.jpg")
 pin = Pin.create!(name: "LAND", address: "〒153-0064 Tokyo, Meguro City, Shimomeguro, 2 Chome−21−28 セントヒルズ目黒 2F", latitude: 35.633201465597644, longitude: 139.7093625975676, comments: "Good curry", icon: "bowl-food", rating: 4.3, visited: false, private: true, user: user, created_at: "Tue, 14 Feb 2023")
 pin.photo.attach(io: file, filename: "land.jpg", content_type: "image/jpg")
 pin.save

 file = URI.open("https://i.gyazo.com/a72210b84fd62038d1a54556582db68d.png")
 pin = Pin.create!(name: "JACK Meguro", address: "1 Chome-3-28 Shimomeguro, Meguro City, Tokyo 153-0064", latitude: 35.634379078062274, longitude: 139.71305695766375, comments: "Dartbar", icon: "beer-mug-empty", rating: 3, visited: false, private: false, user: user, created_at: "Mon, 17 Apr 2023")
 pin.photo.attach(io: file, filename: "jack_meguro.png", content_type: "image/png")
 pin.save

 file = URI.open("https://i.gyazo.com/be481929f75c188cc82a246b85362d3d.jpg")
 pin = Pin.create!(name: "Sukiya", address: "3 Chome-9-3 Meguro, Meguro City, Tokyo 153-0063", latitude: 35.63297712068992, longitude: 139.7078577134912, comments: "Beef bowls", icon: "bowl-food", rating: 3.5, visited: true, private: true, user: user, created_at: "Fri, 20 Jan 2022")
 pin.photo.attach(io: file, filename: "sukiya.jpg", content_type: "image/jpg")
 pin.save

 file = URI.open("https://i.gyazo.com/464d377741d11ffda3285f3883ceca9e.png")
 pin = Pin.create!(name: "Go Bring Slider SANDWICH HOUSE", address: "2 Chome-11-9 Meguro, Meguro City, Tokyo 153-0063", latitude: 35.63371719923141, longitude: 139.7080349, comments: "Good sliders", icon: "burger", rating: 4.2, visited: false, private: true, user: user, created_at: "Sat, 15 Oct 2021")
 pin.photo.attach(io: file, filename: "slider_house.png", content_type: "image/png")
 pin.save

 file = URI.open("https://i.gyazo.com/af07e6510da1a82411e537c9c4daf376.jpg")
 pin = Pin.create!(name: "Pizza Giardino Savoy", address: "〒153-0064 Tokyo, Meguro City, Shimomeguro, 2 Chome−2−16 第６千陽ビル 101", latitude: 35.632202361865986, longitude: 139.71087045767248, comments: "Good pizza", icon: "pizza-slice", rating: 3.6, visited: true, private: false, user: user, created_at: "Wed, 03 Jun 2020")
 pin.photo.attach(io: file, filename: "pizza_giardino.jpg", content_type: "image/jpg")
 pin.save

 file = URI.open("https://i.gyazo.com/9676820b3bcb004f5ddf22fdbb1cda5f.jpg")
 pin = Pin.create!(name: "Joint", address: "〒153-0063 Tokyo, Meguro City, Meguro, 3 Chome−11−6 リヨンドール目黒 １F", latitude: 35.63213092239773, longitude: 139.7064098558187, comments: "Good burger", icon: "burger", rating: 4.2, visited: true, private: false, user: user, created_at: "Thu, 12 Aug 2019")
 pin.photo.attach(io: file, filename: "joint.jpg", content_type: "image/jpg")
 pin.save

 file = URI.open("https://i.gyazo.com/83f9e46b6ed9165119348f6986c13e54.jpg")
 pin = Pin.create!(name: "Wagaya", address: "2 Chome-2-8 Shimomeguro, Meguro City, Tokyo 153-0064", latitude: 35.63203090245075, longitude: 139.71130711534505, comments: "Korean food", icon: "bowl-food", rating: 4.5, visited: false, private: true, user: user, created_at: "Sun, 27 Dec 2020")
 pin.photo.attach(io: file, filename: "wagaya.jpg", content_type: "image/jpg")
 pin.save

 file = URI.open("https://i.gyazo.com/5c5164fb24171629de5c1e509ab7cc0a.jpg")
 pin = Pin.create!(name: "Tonkatsu Taihou", address: "1 Chome-6-15 Meguro, Meguro City, Tokyo 153-0063", latitude: 35.63451281885251, longitude: 139.71174804232749, comments: "Tonkatsu", icon: "bacon", rating: 3.4, visited: false, private: false, user: user, created_at: "Tue, 11 May 2021")
 pin.photo.attach(io: file, filename: "tonkatsu.jpg", content_type: "image/jpg")
 pin.save

 file = URI.open("https://i.gyazo.com/1658d8ee72ed4ad10d5914bd1ba77b1d.jpg")
 pin = Pin.create!(name: "Bangkok Oriental Thai Restaurant", address: "1 Chome-3-1 Shimomeguro, Meguro City, Tokyo 153-0064", latitude: 35.63444597738727, longitude: 139.71333583069008, comments: "Thai food", icon: "bowl-food", rating: 4, visited: true, private: false, user: user, created_at: "Mon, 22 Feb 2018")
 pin.photo.attach(io: file, filename: "thai_restaurant.jpg", content_type: "image/jpg")
 pin.save

 file = URI.open("https://i.gyazo.com/80039866a264ab5f201cb7e02b378c67.jpg")
 pin = Pin.create!(name: "I-rottah", address: "1 Chome-5-21 Shimomeguro, Meguro City, Tokyo 153-0064", latitude: 35.6344643176884, longitude: 139.71243018650878, comments: "Italian restaurant", icon: "pizza-slice", rating: 3, visited: true, private: false, user: user, created_at: "Fri, 06 Oct 2017")
 pin.photo.attach(io: file, filename: "irottah.jpg", content_type: "image/jpg")
 pin.save

 file = URI.open("https://i.gyazo.com/36ed0af45b1ebae102d486323a743275.jpg")
 pin = Pin.create!(name: "Shokumusō", address: "1 Chome-6-12 Meguro, Meguro City, Tokyo 153-0063", latitude: 35.63473299729209, longitude: 139.7121311, comments: "Chinese restaurant", icon: "bowl-food", rating: 4.5, visited: true, private: false, user: user, created_at: "Sat, 17 Mar 2018")
 pin.photo.attach(io: file, filename: "shokumuso.jpg", content_type: "image/jpg")
 pin.save

 file = URI.open("https://i.gyazo.com/d36454729bfdbbcc1e075c7961116677.jpg")
 pin = Pin.create!(name: "Chuka Soba Takemura", address: "1 Chome-6-14 Meguro, Meguro City, Tokyo 153-0063", latitude: 35.63459191809312, longitude: 139.71181339999998, comments: "Ramen", icon: "bowl-food", rating: 2.2, visited: false, private: true, user: user, created_at: "Wed, 13 Jan 2019")
 pin.photo.attach(io: file, filename: "ramen.jpg", content_type: "image/jpg")
 pin.save

 file = URI.open("https://i.gyazo.com/04763b3bf7f788c11ee42ca6de475894.jpg")
 pin = Pin.create!(name: "Torikizoku Meguro Nishiguchi", address: "〒153-0064 Tokyo, Meguro City, Shimomeguro, 1 Chome−1−2 七幸ビル ４階", latitude: 35.63389327868364, longitude: 139.71419472883625, comments: "Izakaya", icon: "beer-mug-empty", rating: 3.8, visited: true, private: false, user: user, created_at: "Thu, 29 Nov 2018")
 pin.photo.attach(io: file, filename: "izakaya.jpg", content_type: "image/jpg")
 pin.save

 file = URI.open("https://i.gyazo.com/e82c5212e809301a1acae081b0ae179d.png")
 pin = Pin.create!(name: "Midori", address: "2 Chome-13-41 Kamiosaki, Shinagawa City, Tokyo 141-0021", latitude: 35.63454305728192, longitude: 139.71719530185385, comments: "Izakaya", icon: "beer-mug-empty", rating: 4, visited: true, private: false, user: user, created_at: "Sun, 20 Oct 2019")
 pin.photo.attach(io: file, filename: "midori.png", content_type: "image/png")
 pin.save

 file = URI.open("https://media.timeout.com/images/105738700/750/422/image.jpg")
 pin = Pin.create!(name: "Initial Nakameguro", address: "1 Chome-16-6 Kamimeguro, Meguro City, Tokyo 153-0051", latitude: 35.64586117259872, longitude: 139.69770329391406, comments: "Delicious and beautiful parfaits", icon: "ice-cream", rating: 5, visited: true, private: false, user: user, created_at: "Sat, 07 Sep 2019")
 pin.photo.attach(io: file, filename: "initial.jpg", content_type: "image/jpg")
 pin.save

 file = URI.open("https://media.timeout.com/images/102589849/image.jpg")
 pin = Pin.create!(name: "Rojiura Curry Samurai Shimokitazawa", address: "3 Chome-31-14 Kitazawa, Setagaya City, Tokyo 155-0031", latitude: 35.664648189744085, longitude: 139.6670366245976, comments: "Best soup curry in Tokyo", icon: "utensils", rating: 5, visited: true, private: false, user: user, created_at: "Tue, 12 Jan 2021")
 pin.photo.attach(io: file, filename: "rojiura.jpg", content_type: "image/jpg")
 pin.save

 file = URI.open("https://cdn.cheapoguides.com/wp-content/uploads/sites/2/2017/06/laforet-harajuku_gdl.jpg")
 pin = Pin.create!(name: "Laforet Harajuku", address: "1 Chome-11-6 Jingumae, Shibuya City, Tokyo 150-0001", latitude: 35.66884094137087, longitude:  139.7051767330189, comments: "Alternate fashion stores", icon: "bag-shopping", rating: 4, visited: true, private: false, user: user, created_at: "Fri, 23 Feb 2018")
 pin.photo.attach(io: file, filename: "laforet.jpg", content_type: "image/jpg")
 pin.save

 file = URI.open("https://media.timeout.com/images/105762318/750/422/image.jpg")
 pin = Pin.create!(name: "Da Cafe Ebisu", address: "3 Chome-11-25 Ebisuminami, Shibuya City, Tokyo 150-0022", latitude: 35.64524234438551, longitude: 139.706941680851, comments: "Known for their fruit sandos", icon: "ice-cream", rating: 5, visited: true, private: false, user: user, created_at: "Wed, 16 Oct 2020")
 pin.photo.attach(io: file, filename: "dacafe.jpg", content_type: "image/jpg")
 pin.save

 file = URI.open("https://www.japan-experience.com/sites/default/files/images/content_images/kyuasakura_4.jpg")
 pin = Pin.create!(name: "Kyu Asakura House", address: "29-20 Sarugakucho, Shibuya City, Tokyo 150-0033", latitude: 35.647133643234675, longitude: 139.70156618226736, comments: "Historical house with beautiful japanese garden", icon: "landmark", rating: 2, visited: false, private: false, user: user, created_at: "Mon, 05 Aug 2019")
 pin.photo.attach(io: file, filename: "house.jpg", content_type: "image/jpg")
 pin.save

 file = URI.open("https://cdn.cheapoguides.com/wp-content/uploads/sites/2/2014/12/Toys-and-Snacks-1024x600.jpg")
 pin = Pin.create!(name: "Hanbey Shinjuku", address: "1 Chome-23-14 Kabukicho, Shinjuku City, Tokyo 160-0021", latitude: 35.69414798229414, longitude: 139.70105899185933, comments: "Showa-era izakaya", icon: "beer-mug-empty", rating: 3, visited: true, private: false, user: user, created_at: "Thu, 21 Mar 2019")
 pin.photo.attach(io: file, filename: "hanbey.jpg", content_type: "image/jpg")
 pin.save

 file = URI.open("https://media.timeout.com/images/105957403/image.jpg")
 pin = Pin.create!(name: "Tir Na Nog", address: "5 Chome-9-5 Chuo City, Ginza, Tokyo 104-0061", latitude: 35.670177196720545, longitude: 139.76563860337893, comments: "Fairytale-themed cocktail bar", icon: "martini-glass", rating: 5, visited: true, private: false, user: user, created_at: "Fri, 14 Jun 2019")
 pin.photo.attach(io: file, filename: "tirnanog.jpg", content_type: "image/jpg")
 pin.save

 file = URI.open("https://a0.cdn.japantravel.com/photo/13021-75494/800!/tokyo-milky-way-cafe-ikebukuro-tokyo-75494.jpg")
 pin = Pin.create!(name: "Milky Way Cafe", address: "1 Chome-12-8 Higashiikebukuro, Toshima City, Tokyo 170-0013", latitude: 35.72928230602473, longitude:  139.71438959761292, comments: "Cute desserts", icon: "ice-cream", rating: 3, visited: true, private: false, user: user, created_at: "Sun, 22 Nov 2020")
 pin.photo.attach(io: file, filename: "milkyway.jpg", content_type: "image/jpg")
 pin.save

 file = URI.open("https://www.sincere-garden.com/img/sp/top/concept_ph01.jpg")
 pin = Pin.create!(name: "Sincere Garden", address: "3 Chome-5-4 Kita-Aoyama, Minato City, Tokyo 107-0061", latitude: 35.6674650400645, longitude: 139.7142284092564, comments: "Taylor's favorite vegan restaurant", icon: "carrot", rating: 3, visited: true, private: false, user: user, created_at: "Tue, 10 Dec 2019")
 pin.photo.attach(io: file, filename: "sincere.jpg", content_type: "image/jpg")
 pin.save

 file = URI.open("https://media.timeout.com/images/105881941/750/422/image.jpg")
 pin = Pin.create!(name: "CÉ LA VI", address: "1 Chome-2-3 Dogenzaka, Shibuya City, Tokyo 150-0043", latitude: 35.65763110325003, longitude: 139.7002529957619, comments: "Music is hard to dance to, but the place is amazing", icon: "music", rating: 4, visited: true, private: false, user: user, created_at: "Mon, 17 Feb 2020")
 pin.photo.attach(io: file, filename: "celavi.jpg", content_type: "image/jpg")
 pin.save

 file = URI.open("https://savorjapan.com/gg/content_image/0004044073E1_740x555-2.jpg")
 pin = Pin.create!(name: "Setsugekka Ginza", address: "〒104-0061 Tokyo, Chuo City, Ginza, 6 Chome−4−3, Gicros Ginza Gems, 9F", latitude: 35.671750288720794, longitude: 139.76199729563183, comments: "Yakiniku spot, highly recommended by Mario", icon: "bacon", rating: 4, visited: false, private: false, user: user, created_at: "Sat, 25 Jul 2020")
 pin.photo.attach(io: file, filename: "setsugekka.jpg", content_type: "image/jpg")
 pin.save

 file = URI.open("https://savorjapan.com/gg/content_image/a5_wagyu.png")
 pin = Pin.create!(name: "Salvatore Cuomo Bros.", address: "〒100-6701 Tokyo, Chiyoda City, Marunouchi, 1 Chome−8−1 大丸東京 13F", latitude: 35.681906095950644, longitude: 139.76886028213954, comments: "Italian restaurant that serves wagyu", icon: "pizza-slice", rating: 5, visited: true, private: false, user: user, created_at: "Wed, 04 Mar 2020")
 pin.photo.attach(io: file, filename: "salvatore.png", content_type: "image/png")
 pin.save

 file = URI.open("https://savorjapan.com/gg/content_image/0032014870I4.jpg")
 pin = Pin.create!(name: "Akasaka Kintan", address: "〒107-0052 Tokyo, Minato City, Akasaka, 3 Chome−11−7, Social Akasaka, 1F", latitude: 35.674730982210065, longitude: 139.73766118213922, comments: "Yakiniku", icon: "bacon", rating: 4, visited: false, private: false, user: user, created_at: "Fri, 09 Sep 2022")
 pin.photo.attach(io: file, filename: "akasaka_kintan.jpg", content_type: "image/jpg")
 pin.save

 file = URI.open("https://savorjapan.com/gg/content_image/0006082532S1001.jpg")
 pin = Pin.create!(name: "Ponta Honke", address: "3 Chome-23-3 Ueno, Taito City, Tokyo 110-0005", latitude: 35.706490576750724, longitude: 139.77293902261928, comments: "Tonkatsu place", icon: "bowl-food", rating: 3, visited: true, private: false, user: user, created_at: "Wed, 11 May 2021")
 pin.photo.attach(io: file, filename: "ponta_honke.jpg", content_type: "image/jpg")
 pin.save

 file = URI.open("https://savorjapan.com/gg/content_image/0006081008F79.jpg")
 pin = Pin.create!(name: "Kappou Sanchou", address: "6-1 Maruyamacho, Shibuya City, Tokyo 150-0044", latitude: 139.69490875330266, longitude: 139.69490875330266, comments: "", icon: "fish", rating: 4, visited: true, private: false, user: user, created_at: "Thu, 28 Jul 2022")
 pin.photo.attach(io: file, filename: "kappou_sanchou.jpg", content_type: "image/jpg")
 pin.save

 file = URI.open("https://savorjapan.com/gg/content_image/t0322_011.jpg")
 pin = Pin.create!(name: "Tempura Kurokawa", address: "6 Chome-21-8 Tsukiji, Chuo City, Tokyo 104-0045", latitude: 35.66486142033481, longitude: 139.7720229956315, comments: "Tempura place", icon: "bowl-food", rating: 5, visited: false, private: false, user: user, created_at: "Mon, 18 Oct 2020")
 pin.photo.attach(io: file, filename: "tempura_kurokawa.jpg", content_type: "image/jpg")
 pin.save

 file = URI.open("https://savorjapan.com/gg/content_image/0006039680F14_740x555d80.jpg")
 pin = Pin.create!(name: "Udon & Oden", address: "〒105-0001 Tokyo, Minato City, Toranomon, 1 Chome−23−3 虎ノ門ヒルズ 4F", latitude: 139.74946142446743, longitude: 139.74946142446743, comments: "Udon and Oden place", icon: "bowl-food", rating: 5, visited: true, private: false, user: user, created_at: "Sat, 22 Jun 2019")
 pin.photo.attach(io: file, filename: "toranomon.jpg", content_type: "image/jpg")
 pin.save

 file = URI.open("https://savorjapan.com/gg/content_image/t0271_013.jpg")
 pin = Pin.create!(name: "Tsukiji Sarashina no Sato", address: "3 Chome-3-9 Tsukiji, Chuo City, Tokyo 104-0045", latitude: 35.66905868185597, longitude: 139.77393776679594, comments: "Great soba place", icon: "bowl-food", rating: 4, visited: true, private: false, user: user, created_at: "Tue, 03 Aug 2021")
 pin.photo.attach(io: file, filename: "sarashina_no_sato.jpg", content_type: "image/jpg")
 pin.save

 file = URI.open("https://savorjapan.com/gg/content_image/0006054241I3.jpg")
 pin = Pin.create!(name: "Sushi Fujita", address: "3 Chome-13-5 Ginza, Chuo City, Tokyo 104-0061", latitude: 35.67068352732996, longitude: 139.76941822261747, comments: "Sushi place", icon: "fish", rating: 4, visited: false, private: false, user: user, created_at: "Sun, 14 Jan 2018")
 pin.photo.attach(io: file, filename: "sushi_fujita.jpg", content_type: "image/jpg")
 pin.save

 file = URI.open("https://savorjapan.com/gg/content_image/0006139221E1_740x555d80.jpg")
 pin = Pin.create!(name: "Kagurazaka Torishin", address: "〒162-0825 Tokyo, Shinjuku City, Kagurazaka, 5 Chome−35 森脇ハイツ1階 森脇ハイツ", latitude: 35.70166462335758, longitude: 139.73882203796188, comments: "Izakaya", icon: "beer-mug-empty", rating: 3, visited: true, private: false, user: user, created_at: "Sat, 25 May 2019")
 pin.photo.attach(io: file, filename: "kagurazaka_torishin.jpg", content_type: "image/jpg")
 pin.save

 file = URI.open("https://i.gyazo.com/bc329367a0fe0fa832a8cbaea009c18c.jpg")
 pin = Pin.create!(name: "Tamawarai ", address: "5-chōme-23-3 Jingūmae, Shibuya City, Tokyo 150-0001", latitude: 35.664604190465084, longitude: 139.70464658465713, comments: "Great soba place", icon: "utensils", rating: 5, visited: true, private: false, user: user, created_at: "Fri, 06 Dec 2019")
 pin.photo.attach(io: file, filename: "tamawarai.jpg", content_type: "image/jpg")
 pin.save

 file = URI.open("https://i.gyazo.com/c38c82c75a9c7eed19ca42405c7e789f.jpg")
 pin = Pin.create!(name: "Onigiri Manma", address: "1F, 3 Chome-14-23 Shinjuku, Shinjuku City, Tokyo 160-0022", latitude: 35.69244711785126, longitude: 139.7054688468902, comments: "Onigiri place", icon: "utensils", rating: 3, visited: false, private: false, user: user, created_at: "Wed, 21 Aug 2020")
 pin.photo.attach(io: file, filename: "onigiri_manma.jpg", content_type: "image/jpg")
 pin.save

 file = URI.open("https://i.gyazo.com/2ff2a8a870f11655fe4b4d341bd1b197.jpg")
 pin = Pin.create!(name: "Pizza Marumo", address: "〒150-0022 Tokyo, Shibuya City, Ebisuminami, 1 Chome−11−13 恵比寿ヴェルソービル 1階", latitude: 35.64547606477545, longitude: 139.70854158213774, comments: "Great pizza place", icon: "pizza-slice", rating: 4, visited: true, private: false, user: user, created_at: "Tue, 10 Nov 2020")
 pin.photo.attach(io: file, filename: "pizza_marumo.jpg", content_type: "image/jpg")
 pin.save

 file = URI.open("https://i.gyazo.com/d1f2d220d3bb4f8366c3e64325ff669a.jpg")
 pin = Pin.create!(name: "Butagumi", address: "2 Chome-24-9 Nishiazabu, Minato City, Tokyo 106-0031", latitude: 35.661083979063, longitude: 139.7220430691696, comments: "Good tonkatsu place", icon: "bacon", rating: 5, visited: true, private: false, user: user, created_at: "Mon, 02 Mar 2020")
 pin.photo.attach(io: file, filename: "butagumi.jpg", content_type: "image/jpg")
 pin.save

 file = URI.open("https://i.gyazo.com/98027e8bfae0c974b74bc2f6a256fe38.jpg")
 pin = Pin.create!(name: "Eureka", address: "〒106-0031 Tokyo, Minato City, Nishiazabu, 4 Chome−11−28 2F", latitude: 35.659554049889586, longitude: 139.7224259576714, comments: "Sake bar / Izakaya", icon: "martini-glass", rating: 4, visited: false, private: false, user: user, created_at: "Thu, 15 Oct 2021")
 pin.photo.attach(io: file, filename: "eureka.jpg", content_type: "image/jpg")
 pin.save
puts "All done!"
