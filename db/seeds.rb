# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Initialize Admin User
if User.find_by(email: "shu_18@163.com").nil?
  u = User.new
  u.email = "shu_18@163.com"           # 可以改成自己的 email
  u.name = "管理员"
  u.password = "123456"                # 最少要六码
  u.password_confirmation = "123456"   # 最少要六码
  u.is_admin = true
  u.save
  puts "Admin 已经建立好了，帐号为#{u.email}, 密码为#{u.password}"
else
  puts "Admin 已经建立过了，脚本跳过该步骤。"
end


# product categroy
  Category.create!(name: "键盘乐器")
  Category.create!(name: "吉他贝斯")
  Category.create!(name: "录音设备")
  Category.create!(name: "管弦乐器")
  Category.create!(name: "打击乐器")


# Initialize Product

Product.create!(
  id: 1,
  category_id: 1,
  title: "YAMAHA 雅马哈 P-115B全套88键数码钢琴",
  description: "本款钢琴仍然采用德国优秀的防锈钢线,UP119QS采用新材料，新工艺进行限量生产，精细加工。",
  price: 4199,
  quantity: 105,
  image: MiniMagick::Image.open("#{Rails.root}/app/assets/images/products/product1/uud101.png")
)

Photo.create!(product_id:1, image: MiniMagick::Image.open("#{Rails.root}/app/assets/images/products/product1/101.jpg"))
Photo.create!(product_id:1, image: MiniMagick::Image.open("#{Rails.root}/app/assets/images/products/product1/102.jpg"))


Product.create!(
  id: 2,
  category_id: 1,
  title: "XINGHAI 星海钢琴 XU-23JA 立式家用",
  description: "初学专业演奏立式 黑色原声钢琴 供应商直送",
  price: 16800,
  quantity: 10001,
  image: MiniMagick::Image.open("#{Rails.root}/app/assets/images/products/product2/details02.jpg") ##details
)

Photo.create!(product_id:2, image: MiniMagick::Image.open("#{Rails.root}/app/assets/images/products/product2/201.jpg"))
Photo.create!(product_id:2, image: MiniMagick::Image.open("#{Rails.root}/app/assets/images/products/product2/202.jpg"))
Photo.create!(product_id:2, image: MiniMagick::Image.open("#{Rails.root}/app/assets/images/products/product2/203.jpg"))
Photo.create!(product_id:2, image: MiniMagick::Image.open("#{Rails.root}/app/assets/images/products/product2/204.jpg"))
Photo.create!(product_id:2, image: MiniMagick::Image.open("#{Rails.root}/app/assets/images/products/product2/205.jpg"))

Product.create!(
  id: 3,
  category_id: 1,
  title: "PEARLRIVER 钢琴 家用立式钢琴UP119QS",
  description: "采用德国优秀的防锈钢线,限量生产，精细加工",
  price: 17300,
  quantity: 10001,
  image: MiniMagick::Image.open("#{Rails.root}/app/assets/images/products/product3/details03.png") ##details
)

Photo.create!(product_id:3, image: open("#{Rails.root}/app/assets/images/products/product3/301.jpg"))
Photo.create!(product_id:3, image: open("#{Rails.root}/app/assets/images/products/product3/302.png"))
Photo.create!(product_id:3, image: open("#{Rails.root}/app/assets/images/products/product3/303.jpg"))
Photo.create!(product_id:3, image: open("#{Rails.root}/app/assets/images/products/product3/304.jpg"))

Product.create!(
  id: 4,
  category_id: 2,
  title: "Kepma D1CP 41寸民谣吉他",
  description: "出色的品质，新颖的设计，超高的性价比",
  price: 569,
  quantity: 10001,
  image: MiniMagick::Image.open("#{Rails.root}/app/assets/images/products/product4/details04.png") ##details
)

Photo.create!(product_id:4, image: MiniMagick::Image.open("#{Rails.root}/app/assets/images/products/product4/401.jpg"))
Photo.create!(product_id:4, image: MiniMagick::Image.open("#{Rails.root}/app/assets/images/products/product4/402.jpg"))
Photo.create!(product_id:4, image: MiniMagick::Image.open("#{Rails.root}/app/assets/images/products/product4/403.jpg"))
Photo.create!(product_id:4, image: MiniMagick::Image.open("#{Rails.root}/app/assets/images/products/product4/404.jpg"))
Photo.create!(product_id:4, image: MiniMagick::Image.open("#{Rails.root}/app/assets/images/products/product4/405.jpg"))
Photo.create!(product_id:4, image: MiniMagick::Image.open("#{Rails.root}/app/assets/images/products/product4/406.jpg"))



Product.create!(
  id: 5,
  category_id: 2,
  title: "YAMAHA 雅马哈 FG830民谣吉他",
  description: "全新开发的音梁结构,带来您从未聆听过的FG吉他音色",
  price: 2290,
  quantity: 10001,
  image: MiniMagick::Image.open("#{Rails.root}/app/assets/images/products/product5/details05.png") ##details
)

Photo.create!(product_id:5, image: MiniMagick::Image.open("#{Rails.root}/app/assets/images/products/product5/501.jpg"))
Photo.create!(product_id:5, image: MiniMagick::Image.open("#{Rails.root}/app/assets/images/products/product5/502.jpg"))




Product.create!(
  id: 6,
  category_id: 2,
  title: "Fender 芬德 Classic Design系列 CD-140S吉他",
  description: "实木云杉作面板，桃花心木作背侧板，提供饱满的共鸣音色以及极好的性价比。",
  price: 1499,
  quantity: 10001,
  image: MiniMagick::Image.open("#{Rails.root}/app/assets/images/products/product6/details06.png") ##details
)

Photo.create!(product_id:6, image: MiniMagick::Image.open("#{Rails.root}/app/assets/images/products/product6/601.jpg"))
Photo.create!(product_id:6, image: MiniMagick::Image.open("#{Rails.root}/app/assets/images/products/product6/602.png"))



Product.create!(
  id: 7,
  category_id: 2,
  title: "Epiphone LP STD PlusTop PRO HS 电吉他",
  description: "经典LAS PAUL琴型电吉他，加强版，可切单",
  price: 3050,
  quantity: 10001,
  image: MiniMagick::Image.open("#{Rails.root}/app/assets/images/products/product7/details07.png") ##details
)

Photo.create!(product_id:7, image: MiniMagick::Image.open("#{Rails.root}/app/assets/images/products/product7/701.jpg"))
Photo.create!(product_id:7, image: MiniMagick::Image.open("#{Rails.root}/app/assets/images/products/product7/702.jpg"))
Photo.create!(product_id:7, image: MiniMagick::Image.open("#{Rails.root}/app/assets/images/products/product7/703.jpg"))
Photo.create!(product_id:7, image: MiniMagick::Image.open("#{Rails.root}/app/assets/images/products/product7/704.jpg"))
Photo.create!(product_id:7, image: MiniMagick::Image.open("#{Rails.root}/app/assets/images/products/product7/705.jpg"))



Product.create!(
  id: 8,
  category_id: 2,
  title: "Schecter BLACKJACK ATX C-5 电贝斯",
  description: "整琴采用桃花心木制作，琴颈采用3片拼接设计,特殊的哑光漆面处理，低调的Aged Creme Multi-Ply 包边",
  price: 599,
  quantity: 10001,
  image: MiniMagick::Image.open("#{Rails.root}/app/assets/images/products/product8/ud800.jpg") ##details
)

Photo.create!(product_id:8, image: MiniMagick::Image.open("#{Rails.root}/app/assets/images/products/product8/u801.png"))
Photo.create!(product_id:8, image: MiniMagick::Image.open("#{Rails.root}/app/assets/images/products/product8/u802.png"))
Photo.create!(product_id:8, image: MiniMagick::Image.open("#{Rails.root}/app/assets/images/products/product8/u803.png"))
Photo.create!(product_id:8, image: MiniMagick::Image.open("#{Rails.root}/app/assets/images/products/product8/u804.png"))
Photo.create!(product_id:8, image: MiniMagick::Image.open("#{Rails.root}/app/assets/images/products/product8/u805.png"))


Product.create!(
  id: 9,
  category_id: 3,
  title: "Genelec 真力 M030AM-5 有源二分频工作室监听音箱",
  description: "芬兰原产",
  price: 3499,
  quantity: 10001,
  image: MiniMagick::Image.open("#{Rails.root}/app/assets/images/products/product9/d901.jpg") ##details
)

Photo.create!(product_id:9, image: MiniMagick::Image.open("#{Rails.root}/app/assets/images/products/product9/901.png"))
Photo.create!(product_id:9, image: MiniMagick::Image.open("#{Rails.root}/app/assets/images/products/product9/902.png"))
Photo.create!(product_id:9, image: MiniMagick::Image.open("#{Rails.root}/app/assets/images/products/product9/903.png"))
Photo.create!(product_id:9, image: MiniMagick::Image.open("#{Rails.root}/app/assets/images/products/product9/904.png"))


Product.create!(
  id: 10,
  category_id: 3,
  title: "PreSonus Eris E8 高解析度有源双功放监听音箱",
  description: "准确传递出坚实的低频和清晰的高频，独特的可选择调整的声学空间设计",
  price: 4580,
  quantity: 10001,
  image: MiniMagick::Image.open("#{Rails.root}/app/assets/images/products/product10/details10.png") ##details
)

Photo.create!(product_id:10, image: MiniMagick::Image.open("#{Rails.root}/app/assets/images/products/product10/1001.png"))
Photo.create!(product_id:10, image: MiniMagick::Image.open("#{Rails.root}/app/assets/images/products/product10/1002.png"))
Photo.create!(product_id:10, image: MiniMagick::Image.open("#{Rails.root}/app/assets/images/products/product10/1003.png"))
Photo.create!(product_id:10, image: MiniMagick::Image.open("#{Rails.root}/app/assets/images/products/product10/1004.png"))
Photo.create!(product_id:10, image: MiniMagick::Image.open("#{Rails.root}/app/assets/images/products/product10/1005.png"))
Photo.create!(product_id:10, image: MiniMagick::Image.open("#{Rails.root}/app/assets/images/products/product10/1006.png"))




Product.create!(
  id: 11,
  category_id: 4,
  title: "Christina 克莉丝蒂娜 S800 小提琴",
  description: "进口欧料精选独板纯手工收藏级小提琴，精品中的精品",
  price: 6480,
  quantity: 10001,
  image: MiniMagick::Image.open("#{Rails.root}/app/assets/images/products/product11/d1101.png") ##details
)

Photo.create!(product_id:11, image: MiniMagick::Image.open("#{Rails.root}/app/assets/images/products/product11/1101.jpg"))
Photo.create!(product_id:11, image: MiniMagick::Image.open("#{Rails.root}/app/assets/images/products/product11/1102.jpg"))
Photo.create!(product_id:11, image: MiniMagick::Image.open("#{Rails.root}/app/assets/images/products/product11/1103.jpg"))
Photo.create!(product_id:11, image: MiniMagick::Image.open("#{Rails.root}/app/assets/images/products/product11/1104.jpg"))
Photo.create!(product_id:11, image: MiniMagick::Image.open("#{Rails.root}/app/assets/images/products/product11/1105.jpg"))


Product.create!(
  id: 12,
  category_id: 4,
  title: "MOZA VN300专业考级全手工小提琴",
  description: "国际大师监制，高级制琴师制作",
  price: 780,
  quantity: 10001,
  image: MiniMagick::Image.open("#{Rails.root}/app/assets/images/products/product12/d1201.jpg") ##details
)

Photo.create!(product_id:12, image: MiniMagick::Image.open("#{Rails.root}/app/assets/images/products/product12/1201.png"))
Photo.create!(product_id:12, image: MiniMagick::Image.open("#{Rails.root}/app/assets/images/products/product12/1202.png"))
Photo.create!(product_id:12, image: MiniMagick::Image.open("#{Rails.root}/app/assets/images/products/product12/1203.png"))
Photo.create!(product_id:12, image: MiniMagick::Image.open("#{Rails.root}/app/assets/images/products/product12/1204.png"))



Product.create!(
  id: 13,
  category_id: 5,
  title: "电子架子鼓",
  description: "便于携带，打遍天下",
  price: 350,
  quantity: 10001,
  image: MiniMagick::Image.open("#{Rails.root}/app/assets/images/products/product13/details13.png") ##details
)

Photo.create!(product_id:13, image: MiniMagick::Image.open("#{Rails.root}/app/assets/images/products/product13/1301.jpg"))
Photo.create!(product_id:13, image: MiniMagick::Image.open("#{Rails.root}/app/assets/images/products/product13/1302.jpg"))
Photo.create!(product_id:13, image: MiniMagick::Image.open("#{Rails.root}/app/assets/images/products/product13/1303.jpg"))
Photo.create!(product_id:13, image: MiniMagick::Image.open("#{Rails.root}/app/assets/images/products/product13/1304.jpg"))


Product.create!(
  id: 14,
  category_id: 5,
  title: "Medeli美得理专业架子鼓 DD526",
  description: "智能电鼓魔鲨成人专业电子鼓",
  price: 6380,
  quantity: 10001,
  image: MiniMagick::Image.open("#{Rails.root}/app/assets/images/products/product14/ud1400.jpg") ##details
)

Photo.create!(product_id:14, image: MiniMagick::Image.open("#{Rails.root}/app/assets/images/products/product14/u1401.png"))



Product.create!(
  id: 15,
  category_id: 2,
  title: "Schecter Omen Solo-6 电吉他(胡桃色) ",
  description: "高性价比OMEN系列，经典SOLO型琴体",
  price: 2090,
  quantity: 10001,
  image: MiniMagick::Image.open("#{Rails.root}/app/assets/images/products/product15/details15.png") ##details
)

Photo.create!(product_id:15, image: MiniMagick::Image.open("#{Rails.root}/app/assets/images/products/product15/1501.jpg"))
Photo.create!(product_id:15, image: MiniMagick::Image.open("#{Rails.root}/app/assets/images/products/product15/1502.png"))
Photo.create!(product_id:15, image: MiniMagick::Image.open("#{Rails.root}/app/assets/images/products/product15/1503.png"))
Photo.create!(product_id:15, image: MiniMagick::Image.open("#{Rails.root}/app/assets/images/products/product15/1504.png"))
Photo.create!(product_id:15, image: MiniMagick::Image.open("#{Rails.root}/app/assets/images/products/product15/1505.png"))



Product.create!(
  id: 16,
  category_id: 2,
  title: "Cort 考特 AD810 OP 民谣吉他 哑光原色",
  description: "专为即将拥有吉他的朋友而设计的，价格适中，做工优质",
  price: 999,
  quantity: 10001,
  image: MiniMagick::Image.open("#{Rails.root}/app/assets/images/products/product16/ud1600.jpg") ##details
)

Photo.create!(product_id:16, image: MiniMagick::Image.open("#{Rails.root}/app/assets/images/products/product16/u1601.jpg"))



Product.create!(
  id: 17,
  category_id: 1,
  title: "Pearl River 珠江 艾茉森电钢琴F-1",
  description: "完美的音色、震撼的共鸣效果和操控自如的弹奏舒适感",
  price: 4280,
  quantity: 10001,
  image: MiniMagick::Image.open("#{Rails.root}/app/assets/images/products/product17/ud1701.png") ##details
)

Photo.create!(product_id:17, image: MiniMagick::Image.open("#{Rails.root}/app/assets/images/products/product17/1701.png"))
Photo.create!(product_id:17, image: MiniMagick::Image.open("#{Rails.root}/app/assets/images/products/product17/1702.png"))
Photo.create!(product_id:17, image: MiniMagick::Image.open("#{Rails.root}/app/assets/images/products/product17/1703.png"))
Photo.create!(product_id:17, image: MiniMagick::Image.open("#{Rails.root}/app/assets/images/products/product17/1704.png"))

Product.create!(
  id: 18,
  category_id: 1,
  title: "Roland 罗兰 数码钢琴 RP301-SB",
  description: "黑色 印尼原装进口",
  price: 5780,
  quantity: 10001,
  image: MiniMagick::Image.open("#{Rails.root}/app/assets/images/products/product18/details18.png") ##details
)

Photo.create!(product_id:18, image: MiniMagick::Image.open("#{Rails.root}/app/assets/images/products/product18/1801.png"))
Photo.create!(product_id:18, image: MiniMagick::Image.open("#{Rails.root}/app/assets/images/products/product18/1802.png"))



Product.create!(
  id: 19,
  category_id: 3,
  title: "JBL LSR 305-CH 5寸有源监听音箱",
  description: "HIFI 发烧专用音箱",
  price: 1199,
  quantity: 0,
  image: MiniMagick::Image.open("#{Rails.root}/app/assets/images/products/product19/d1901.jpg") ##details
)

Photo.create!(product_id:19, image: MiniMagick::Image.open("#{Rails.root}/app/assets/images/products/product19/1901.png"))
Photo.create!(product_id:19, image: MiniMagick::Image.open("#{Rails.root}/app/assets/images/products/product19/1902.png"))
Photo.create!(product_id:19, image: MiniMagick::Image.open("#{Rails.root}/app/assets/images/products/product19/1903.png"))



Product.create!(
  id: 20,
  category_id: 3,
  title: "HiVi 惠威 X5 2.0专业有源监听音箱",
  description: "专业监听全有源电子滤波电路，单元配置20mm金属硬球顶高音,5.25英寸长冲程盆碗形低音",
  price: 3080,
  quantity: 10001,
  image: MiniMagick::Image.open("#{Rails.root}/app/assets/images/products/product20/ud2000.jpg") ##details
)

Photo.create!(product_id:20, image: MiniMagick::Image.open("#{Rails.root}/app/assets/images/products/product20/2001.png"))
Photo.create!(product_id:20, image: MiniMagick::Image.open("#{Rails.root}/app/assets/images/products/product20/2002.png"))
Photo.create!(product_id:20, image: MiniMagick::Image.open("#{Rails.root}/app/assets/images/products/product20/2003.png"))
Photo.create!(product_id:20, image: MiniMagick::Image.open("#{Rails.root}/app/assets/images/products/product20/2004.png"))
