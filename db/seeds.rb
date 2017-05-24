# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Initialize Admin User
if User.find_by(email: "admin@123.com").nil?
  u = User.new
  u.email = "admin@123.com"           # 可以改成自己的 email
  u.password = "123456"                # 最少要六码
  u.password_confirmation = "123456"   # 最少要六码
  u.is_admin = true
  u.save
  puts "Admin 已经建立好了，帐号为#{u.email}, 密码为#{u.password}"
else
  puts "Admin 已经建立过了，脚本跳过该步骤。"
end


# Initialize Product


# product categroy
  Category.create!(name: "键盘乐器")
  Category.create!(name: "吉他贝斯")
  Category.create!(name: "录音设备")
  Category.create!(name: "管弦乐器")
  Category.create!(name: "打击乐器")
  Category.create!(name: "民族乐器")

Product.create!(
  category_id: 1,
  title: "YAMAHA P115WHA 全套88键数码钢琴",
  description: "搭配U型架，提供了更好的稳定度。三角钢琴音色",
  price: 5699,
  quantity: 1000,
  image: MiniMagick::Image.open("https://images-cn.ssl-images-amazon.com/images/I/51GZ0F3UlkL._SL800_.jpg")
)

Product.create!(
  category_id: 4,
  title: "梦响MOZA VNK80 纯手工小提琴",
  description: "面板：双A级俄罗斯进口云杉木，木材纹路密，音质更通透。背板：双A级缅甸进口虎纹枫木，木质坚硬，传声效果佳。手工嵌线：对技术要求更严格，保证了琴箱的完整性和密封性，让音色更饱满
精选环保漆，更均匀通透",
  price: 2800,
  quantity: 1000,
  image: MiniMagick::Image.open("https://images-cn.ssl-images-amazon.com/images/I/51JbuymzGZL._SL800_.jpg")
)


Product.create!(
  category_id: 1,
  title: "XINGHAI XU-25FA 立式家用专业演奏钢琴125",
  description: "XINGHAI 星海 XU-25FA黑色立式钢琴原声钢琴出口德国125型",
  price: 19800,
  quantity: 1000,
  image: MiniMagick::Image.open("https://images-cn.ssl-images-amazon.com/images/I/513AoRUT19L._SL800_.jpg")
)



Product.create!(
  category_id: 2,
  title: "YAMAHA FG800MS/WC 单板云杉民谣木吉他",
  description: "FG系列展现了雅马哈的优秀工艺。由挑选的木料制成，FG乐器拥有漂亮外观与音色，此款吉他是FG700系列的2016升级版",
  price: 1680,
  quantity: 1000,
  image: MiniMagick::Image.open("https://images-cn.ssl-images-amazon.com/images/I/51woxc6eqOL._SL1000_.jpg")
)

Product.create!(
  category_id: 2,
  title: "IBANEZ 电吉他 GRG170DX#-CA",
  description: " 枫木琴颈；椴木琴身；中型品丝；Fat 10琴桥；STD-H1（双）琴颈拾音器；STD-S4（单）中拾音器；STD-H2（双）琴桥拾音器",
  price: 1170,
  quantity: 1000,
  image: MiniMagick::Image.open("https://images-cn.ssl-images-amazon.com/images/I/71-tRb57%2BML._SL1500_.jpg")
)

Product.create!(
  category_id: 3,
  title: "PreSonus Eris E8 高解析度有源双功放监听音箱",
  description: "PreSonus紧凑型两分频有源监听音箱Eris系列 E8，可以准确的传递出坚实的低频和清晰的高频，独特的可选择调整的声学空间设计为用户表达出了更加准确的监听环境。它还可以控制模仿不同的听音环境，使频率响应达到较大限度的平直，使之胜于其它同等价位监听音箱。",
  price: 4580,
  quantity: 1000,
  image: MiniMagick::Image.open("https://images-cn.ssl-images-amazon.com/images/I/717di%2Bn7TbL._SL1339_.jpg")
)

Product.create!(
  category_id: 1,
  title: "Pearl River 新世纪立式钢琴 原声钢琴118F1黑色",
  description: "新世纪立式钢琴 原声钢琴118F1黑色",
  price: 11480,
  quantity: 1000,
  image: MiniMagick::Image.open("https://images-cn.ssl-images-amazon.com/images/I/61twT8%2B06wL._SL1300_.jpg")
)


Product.create!(
  category_id: 3,
  title: "YAMAHA  UR44 USB声卡 音频接口",
  description: "同时兼具了高功能性和便携性的UR44, 是一款应用范围广泛的强大的音频/MIDI接口。4个话放，6个输入，4个输出，MIDI接口，集成DSP供电以及与iPad的连接功能都体现了它的高度灵活性。包装清单",
  price: 2480,
  quantity: 1000,
  image: MiniMagick::Image.open("https://images-cn.ssl-images-amazon.com/images/I/51qQZoTZwkL._SL1000_.jpg")
)

Product.create!(
  category_id: 3,
  title: "Genelec 8020CPM-5 二分频、双功放有源监听音箱",
  description: "Genelec 8020 有源二分频双功放监听音箱，DCW 声波指向性控制技术，高性能反射导管",
  price: 3650,
  quantity: 1000,
  image: MiniMagick::Image.open("https://images-cn.ssl-images-amazon.com/images/I/91poBD8C%2B1L._SL1500_.jpg")
)

Product.create!(
  category_id: 4,
  title: "Christina EU2000A-David考级小提琴A款",
  description: "Christina 克莉丝蒂娜 EU2000A-David系列整琴欧洲制作原装进口考级小提琴A款",
  price: 1680,
  quantity: 1000,
  image: MiniMagick::Image.open("https://images-cn.ssl-images-amazon.com/images/I/51a2z1WzvbL._SL800_.jpg")
)

Product.create!(
  category_id: 5,
  title: "非洲手鼓10英寸",
  description: "印尼原产进口手工整木掏空雕刻丽江非洲鼓专业山羊皮山羊脊背皮ESP50/60-2EL大象 (10英寸)",
  price: 1500,
  quantity: 1000,
  image: MiniMagick::Image.open("https://images-cn.ssl-images-amazon.com/images/I/61aI%2Bvkhj6L._SL800_.jpg")
)


Product.create!(
  category_id: 2,
  title: "TOM 高端ukulele 经典款23寸 尤克里里 TUC-200",
  description: "每一支Tom用材考据，都使用上等材料,配备意大利正品aquila进口弦线，牛骨弦枕！",
  price: 450,
  quantity: 1000,
  image: MiniMagick::Image.open("https://images-cn.ssl-images-amazon.com/images/I/41NER44RM3L.jpg")
)
#
# Product.create!(
#   category_id: ,
#   title: "",
#   description: "",
#   price: ,
#   quantity: 1000,
#   image: MiniMagick::Image.open("")
# )
#
# Product.create!(
#   category_id: ,
#   title: "",
#   description: "",
#   price: ,
#   quantity: 1000,
#   image: MiniMagick::Image.open("")
# )
#
# Product.create!(
#   category_id: ,
#   title: "",
#   description: "",
#   price: ,
#   quantity: 1000,
#   image: MiniMagick::Image.open("")
# )
#
# Product.create!(
#   category_id: ,
#   title: "",
#   description: "",
#   price: ,
#   quantity: 1000,
#   image: MiniMagick::Image.open("")
# )
#
#
# Product.create!(
#   category_id: ,
#   title: "",
#   description: "",
#   price: ,
#   quantity: 1000,
#   image: MiniMagick::Image.open("")
# )
