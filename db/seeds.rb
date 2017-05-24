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
  u.password = "123456"                # 最少要六码
  u.password_confirmation = "123456"   # 最少要六码
  u.is_admin = true
  u.save
  puts "Admin 已经建立好了，帐号为#{u.email}, 密码为#{u.password}"
else
  puts "Admin 已经建立过了，脚本跳过该步骤。"
end


# product categroy
  Category.create!(name: "键盘钢琴")
  Category.create!(name: "吉他贝斯")
  Category.create!(name: "录音设备")
  Category.create!(name: "管弦乐器")
  Category.create!(name: "打击乐器")
  Category.create!(name: "民族乐器")

# Initialize Product
Product.create!(
  id: 1, # 第二个商品id:2, Product_id:2, 以此类推
  category_id: 3,
  title: "YAMAHA 雅马哈 UR44 USB声卡 音频接口",
  description: "同时兼具了高功能性和便携性的UR44, 是一款应用范围广泛的强大的音频/MIDI接口。4个话放，6个输入，4个输出，MIDI接口，集成DSP供电以及与iPad的连接功能都体现了它的高度灵活性。包装清单",
  price: 2480,
  quantity: 1000,
  )
# Initialize Product Photos
# 先將照片上傳到iPic或其他位置
  Photo.create!(product_id:1, image: MiniMagick::Image.open("https://images-cn.ssl-images-amazon.com/images/I/51qQZoTZwkL._SL1000_.jpg"))
  Photo.create!(product_id:1, image: MiniMagick::Image.open("https://images-cn.ssl-images-amazon.com/images/I/91poBD8C%2B1L._SL1500_.jpg"))
  Photo.create!(product_id:1, image: MiniMagick::Image.open("https://images-cn.ssl-images-amazon.com/images/I/51a2z1WzvbL._SL800_.jpg"))
  Photo.create!(product_id:1, image: MiniMagick::Image.open("https://images-cn.ssl-images-amazon.com/images/I/51JbuymzGZL._SL800_.jpg"))
  Photo.create!(product_id:1, image: MiniMagick::Image.open("https://images-cn.ssl-images-amazon.com/images/I/61aI%2Bvkhj6L._SL800_.jpg"))
# 上面的product_id与上面创建的商品一一对应，即每个商品id为1的加5张照片，第二个商品就应改为2.

# Product.create!(
#   category_id: 3,
#   title: "Genelec 真力 8020CPM-5 二分频、双功放有源监听音箱(只装)",
#   description: "Genelec 8020 有源二分频双功放监听音箱，DCW 声波指向性控制技术，高性能反射导管",
#   price: 3650,
#   quantity: 1000,
#   image: MiniMagick::Image.open("https://images-cn.ssl-images-amazon.com/images/I/91poBD8C%2B1L._SL1500_.jpg")
# )
#
# Product.create!(
#   category_id: 4,
#   title: "Christina 克莉丝蒂娜 EU2000A-David系列整琴欧洲制作原装进口考级小提琴A款",
#   description: "Christina 克莉丝蒂娜 EU2000A-David系列整琴欧洲制作原装进口考级小提琴A款",
#   price: 1680,
#   quantity: 1000,
#   image: MiniMagick::Image.open("https://images-cn.ssl-images-amazon.com/images/I/51a2z1WzvbL._SL800_.jpg")
# )
#
# Product.create!(
#   category_id: 4,
#   title: "梦响MOZA VNK80 演奏独奏小提琴 国际大师监制虎纹纯手工小提琴",
#   description: "面板：双A级俄罗斯进口云杉木，木材纹路密，音质更通透。背板：双A级缅甸进口虎纹枫木，木质坚硬，传声效果佳。手工嵌线：对技术要求更严格，保证了琴箱的完整性和密封性，让音色更饱满
# 精选环保漆，更均匀通透",
#   price: 2800,
#   quantity: 1000,
#   image: MiniMagick::Image.open("https://images-cn.ssl-images-amazon.com/images/I/51JbuymzGZL._SL800_.jpg")
# )
#
# Product.create!(
#   category_id: 5,
#   title: "非洲手鼓10英寸",
#   description: "印尼原产进口手工整木掏空雕刻丽江非洲鼓专业山羊皮山羊脊背皮ESP50/60-2EL大象 (10英寸)",
#   price: 1500,
#   quantity: 1000,
#   image: MiniMagick::Image.open("https://images-cn.ssl-images-amazon.com/images/I/61aI%2Bvkhj6L._SL800_.jpg")
# )
#
#
# Product.create!(
#   category_id: 6,
#   title: "悠扬 葫芦丝 初学用葫芦丝 古铜颜色葫芦丝 葫芦丝",
#   description: "悠扬 超值的 初学用葫芦丝 仿古铜色葫芦丝 降B调葫芦丝 送中国节 包邮 20年经验的校音师纯手工打磨簧片，音色更纯净，更柔美。 产品名称：仿古铜色葫芦丝 调性：降B调 赠送防压硬盒和中国结",
#   price: 120,
#   quantity: 1000,
#   image: MiniMagick::Image.open("https://images-cn-4.ssl-images-amazon.com/images/I/61CFUnYzWOL._SL800_.jpg")
# )
