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

# file = URI.open("https://i.gyazo.com/0287e3a0df08d525fd8c2467338f0f60.png")
# user = User.create!(email: "doug@hotmail.com", password: "doug123")
# user.avatar.attach(io: file, filename: "doug.png", content_type: "image/png")
# user.save

# file = URI.open("https://i.gyazo.com/6f2912259150c225cfc752be0c4bd8ba.png")
# user = User.create!(email: "yann@gmail.com", password: "yann123")
# user.avatar.attach(io: file, filename: "yann.png", content_type: "image/png")
# user.save

# file = URI.open("https://i.gyazo.com/0c9a4bdb449c588c01fe7193f1769135.png")
# user = User.create!(email: "donald@outlook.com", password: "donald123")
# user.avatar.attach(io: file, filename: "donald.png", content_type: "image/png")
# user.save

# file = URI.open("https://i.gyazo.com/6f0547b30c8f461480a9b321db813436.png")
# user = User.create!(email: "trouni@yahoo.com", password: "trouni123")
# user.avatar.attach(io: file, filename: "trouni.png", content_type: "image/png")
# user.save
puts "Creating user and pins [1]"
file = URI.open("https://i.gyazo.com/29e6387d82874fbeb285fa3979e07027.png")
user = User.create!(email: "celso@gmail.com", password: "celso123", username: "Celso")
user.avatar.attach(io: file, filename: "celso.png", content_type: "image/png")
user.save

file = URI.open("https://imageproxy.wolt.com/venue/627b59f13e69a533600fed96/58918384-dbf8-11ec-bc05-52ab4d82f101_______________closeup.jpg")
pin = Pin.create!(name: "Hungry Heaven", address: "〒153-0064 Tokyo, Meguro City, Shimomeguro, 1 Chome−2−22 セザール目黒 2F", latitude: 35.63409123108172, longitude: 139.71368136084774, comments: "Good burger", icon: "fa-solid fa-burger", rating: 4, visited: true, private: false, user: user)
pin.photo.attach(io: file, filename: "hungry_heaven.jpg", content_type: "image/jpg")
pin.save

file = URI.open("https://gourmand.tokyo/wp-content/uploads/2020/08/IMG_1611-1024x768.jpg")
pin = Pin.create!(name: "LAND", address: "〒153-0064 Tokyo, Meguro City, Shimomeguro, 2 Chome−21−28 セントヒルズ目黒 2F", latitude: 35.633201465597644, longitude: 139.7093625975676, comments: "Good curry", icon: "fa-solid fa-bowl-food", rating: 4.3, visited: false, private: true, user: user)
pin.photo.attach(io: file, filename: "land.jpg", content_type: "image/jpg")
pin.save

file = URI.open("https://i.gyazo.com/a72210b84fd62038d1a54556582db68d.png")
pin = Pin.create!(name: "JACK Meguro", address: "1 Chome-3-28 Shimomeguro, Meguro City, Tokyo 153-0064", latitude: 35.634379078062274, longitude: 139.71305695766375, comments: "Dartbar", icon: "fa-solid fa-beer-mug-empty", rating: 3, visited: false, private: false, user: user)
pin.photo.attach(io: file, filename: "jack_meguro.png", content_type: "image/png")
pin.save
# =============================
puts "Creating user and pins [2]"
file = URI.open("https://i.gyazo.com/0287e3a0df08d525fd8c2467338f0f60.png")
user = User.create!(email: "doug@hotmail.com", password: "doug123", username: "Dough")
user.avatar.attach(io: file, filename: "doug.png", content_type: "image/png")
user.save

file = URI.open("https://i.gyazo.com/be481929f75c188cc82a246b85362d3d.jpg")
pin = Pin.create!(name: "Sukiya", address: "3 Chome-9-3 Meguro, Meguro City, Tokyo 153-0063", latitude: 35.63297712068992, longitude: 139.7078577134912, comments: "Beef bowls", icon: "fa-solid fa-bowl-food", rating: 3.5, visited: true, private: true, user: user)
pin.photo.attach(io: file, filename: "sukiya.jpg", content_type: "image/jpg")
pin.save

file = URI.open("https://i.gyazo.com/464d377741d11ffda3285f3883ceca9e.png")
pin = Pin.create!(name: "Go Bring Slider SANDWICH HOUSE", address: "2 Chome-11-9 Meguro, Meguro City, Tokyo 153-0063", latitude: 35.63371719923141, longitude: 139.7080349, comments: "Good sliders", icon: "fa-solid fa-burger", rating: 4.2, visited: false, private: true, user: user)
pin.photo.attach(io: file, filename: "slider_house.png", content_type: "image/png")
pin.save

file = URI.open("https://i.gyazo.com/af07e6510da1a82411e537c9c4daf376.jpg")
pin = Pin.create!(name: "Pizza Giardino Savoy", address: "〒153-0064 Tokyo, Meguro City, Shimomeguro, 2 Chome−2−16 第６千陽ビル 101", latitude: 35.632202361865986, longitude: 139.71087045767248, comments: "Good pizza", icon: "fa-solid fa-pizza-slice", rating: 3.6, visited: true, private: false, user: user)
pin.photo.attach(io: file, filename: "pizza_giardino.jpg", content_type: "image/jpg")
pin.save

file = URI.open("https://i.gyazo.com/9676820b3bcb004f5ddf22fdbb1cda5f.jpg")
pin = Pin.create!(name: "Joint", address: "〒153-0063 Tokyo, Meguro City, Meguro, 3 Chome−11−6 リヨンドール目黒 １F", latitude: 35.63213092239773, longitude: 139.7064098558187, comments: "Good burger", icon: "fa-solid fa-burger", rating: 4.2, visited: true, private: false, user: user)
pin.photo.attach(io: file, filename: "joint.jpg", content_type: "image/jpg")
pin.save
# =============================
puts "Creating user and pins [3]"
file = URI.open("https://i.gyazo.com/6f2912259150c225cfc752be0c4bd8ba.png")
user = User.create!(email: "yann@gmail.com", password: "yann123", username: "Yann")
user.avatar.attach(io: file, filename: "yann.png", content_type: "image/png")
user.save

file = URI.open("https://i.gyazo.com/83f9e46b6ed9165119348f6986c13e54.jpg")
pin = Pin.create!(name: "Wagaya", address: "2 Chome-2-8 Shimomeguro, Meguro City, Tokyo 153-0064", latitude: 35.63203090245075, longitude: 139.71130711534505, comments: "Korean food", icon: "fa-solid fa-bowl-rice", rating: 4.5, visited: false, private: true, user: user)
pin.photo.attach(io: file, filename: "wagaya.jpg", content_type: "image/jpg")
pin.save

file = URI.open("https://i.gyazo.com/5c5164fb24171629de5c1e509ab7cc0a.jpg")
pin = Pin.create!(name: "Tonkatsu Taihou", address: "1 Chome-6-15 Meguro, Meguro City, Tokyo 153-0063", latitude: 35.63451281885251, longitude: 139.71174804232749, comments: "Tonkatsu", icon: "fa-solid fa-bacon", rating: 3.4, visited: false, private: false, user: user)
pin.photo.attach(io: file, filename: "tonkatsu.jpg", content_type: "image/jpg")
pin.save

file = URI.open("https://i.gyazo.com/1658d8ee72ed4ad10d5914bd1ba77b1d.jpg")
pin = Pin.create!(name: "Bangkok Oriental Thai Restaurant", address: "1 Chome-3-1 Shimomeguro, Meguro City, Tokyo 153-0064", latitude: 35.63444597738727, longitude: 139.71333583069008, comments: "Thai food", icon: "fa-solid fa-bowl-rice", rating: 4, visited: true, private: false, user: user)
pin.photo.attach(io: file, filename: "thai_restaurant.jpg", content_type: "image/jpg")
pin.save
# =============================
puts "Creating user and pins [4]"
file = URI.open("https://i.gyazo.com/0c9a4bdb449c588c01fe7193f1769135.png")
user = User.create!(email: "donald@outlook.com", password: "donald123", username: "Donald")
user.avatar.attach(io: file, filename: "donald.png", content_type: "image/png")
user.save

file = URI.open("https://i.gyazo.com/80039866a264ab5f201cb7e02b378c67.jpg")
pin = Pin.create!(name: "I-rottah", address: "1 Chome-5-21 Shimomeguro, Meguro City, Tokyo 153-0064", latitude: 35.6344643176884, longitude: 139.71243018650878, comments: "Italian restaurant", icon: "fa-solid fa-pizza-slice", rating: 3, visited: true, private: false, user: user)
pin.photo.attach(io: file, filename: "irottah.jpg", content_type: "image/jpg")
pin.save

file = URI.open("https://i.gyazo.com/36ed0af45b1ebae102d486323a743275.jpg")
pin = Pin.create!(name: "Shokumusō", address: "1 Chome-6-12 Meguro, Meguro City, Tokyo 153-0063", latitude: 35.63473299729209, longitude: 139.7121311, comments: "Chinese restaurant", icon: "fa-solid fa-bowl-rice", rating: 4.5, visited: true, private: false, user: user)
pin.photo.attach(io: file, filename: "shokumuso.jpg", content_type: "image/jpg")
pin.save

file = URI.open("https://i.gyazo.com/d36454729bfdbbcc1e075c7961116677.jpg")
pin = Pin.create!(name: "Chuka Soba Takemura", address: "1 Chome-6-14 Meguro, Meguro City, Tokyo 153-0063", latitude: 35.63459191809312, longitude: 139.71181339999998, comments: "Ramen", icon: "fa-solid fa-bowl-food", rating: 2.2, visited: false, private: true, user: user)
pin.photo.attach(io: file, filename: "ramen.jpg", content_type: "image/jpg")
pin.save
# =============================
puts "Creating user and pins [5]"
file = URI.open("https://i.gyazo.com/6f0547b30c8f461480a9b321db813436.png")
user = User.create!(email: "trouni@yahoo.com", password: "trouni123", username: "Trouni")
user.avatar.attach(io: file, filename: "trouni.png", content_type: "image/png")
user.save

file = URI.open("https://i.gyazo.com/04763b3bf7f788c11ee42ca6de475894.jpg")
pin = Pin.create!(name: "Torikizoku Meguro Nishiguchi", address: "〒153-0064 Tokyo, Meguro City, Shimomeguro, 1 Chome−1−2 七幸ビル ４階", latitude: 35.63389327868364, longitude: 139.71419472883625, comments: "Izakaya", icon: "fa-solid fa-beer-mug-empty", rating: 3.8, visited: true, private: false, user: user)
pin.photo.attach(io: file, filename: "izakaya.jpg", content_type: "image/jpg")
pin.save

file = URI.open("https://i.gyazo.com/e82c5212e809301a1acae081b0ae179d.png")
pin = Pin.create!(name: "Midori", address: "2 Chome-13-41 Kamiosaki, Shinagawa City, Tokyo 141-0021", latitude: 35.63454305728192, longitude: 139.71719530185385, comments: "Izakaya", icon: "fa-solid fa-beer-mug-empty", rating: 4, visited: true, private: false, user: user)
pin.photo.attach(io: file, filename: "midori.png", content_type: "image/png")
pin.save
# =============================
puts "All done!"
