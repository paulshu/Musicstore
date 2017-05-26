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


# product categroy
  Category.create!(name: "键盘乐器")
  Category.create!(name: "吉他贝斯")
  Category.create!(name: "录音设备")
  Category.create!(name: "管弦乐器")
  Category.create!(name: "打击乐器")
  Category.create!(name: "民族乐器")


# Initialize Product
# Product.create!(
#   id: 1, # 第二个商品id:2, Product_id:2, 以此类推
#   category_id: 3,
#   title: "YAMAHA  UR44 USB声卡 音频接口",
#   description: "同时兼具了高功能性和便携性的UR44, 是一款应用范围广泛的强大的音频/MIDI接口。4个话放，6个输入，4个输出，MIDI接口，集成DSP供电以及与iPad的连接功能都体现了它的高度灵活性。包装清单",
#   price: 2480,
#   quantity: 1000,
#   )
# # Initialize Product Photos
# # 先將照片上傳到iPic或其他位置
#   Photo.create!(product_id:1, image: MiniMagick::Image.open("https://images-cn.ssl-images-amazon.com/images/I/51qQZoTZwkL._SL1000_.jpg"))
#   Photo.create!(product_id:1, image: MiniMagick::Image.open("https://images-cn.ssl-images-amazon.com/images/I/91poBD8C%2B1L._SL1500_.jpg"))
#   Photo.create!(product_id:1, image: MiniMagick::Image.open("https://images-cn.ssl-images-amazon.com/images/I/51a2z1WzvbL._SL800_.jpg"))
#   Photo.create!(product_id:1, image: MiniMagick::Image.open("https://images-cn.ssl-images-amazon.com/images/I/51JbuymzGZL._SL800_.jpg"))
#   Photo.create!(product_id:1, image: MiniMagick::Image.open("https://images-cn.ssl-images-amazon.com/images/I/61aI%2Bvkhj6L._SL800_.jpg"))
# # 上面的product_id与上面创建的商品一一对应，即每个商品id为1的加5张照片，第二个商品就应改为2.

# 新增产品

Product.create!(
  id: 1,
  category_id: 1,
  title: "PEARLRIVER UP119QS 黑色原声钢琴",
  description: "本款钢琴仍然采用德国优秀的防锈钢线,UP119QS采用新材料，新工艺进行限量生产，精细加工。",
  price: 17300,
  quantity: 1000#,
  # image: MiniMagick::Image.open("https://images-cn.ssl-images-amazon.com/images/I/51m5ub-KidL._SL1000_.jpg") #,
  # details: "原装进口的键盖缓降器，持久耐用，安全舒适。<br>运用欧洲技术设计的不等厚音板，符合钢琴共鸣系统的发声规律，使音色丰满圆润，柔和纯美。<br><br>商品参数<br><img alt=\"\" src=\"https://images-cn.ssl-images-amazon.com/images/G/28/aplus_rbs/B071YP9MH8-20170428-04.jpg\">"
)

Photo.create!(product_id:1, image: MiniMagick::Image.open("https://images-cn.ssl-images-amazon.com/images/I/51m5ub-KidL._SL1000_.jpg"))
Photo.create!(product_id:1, image: MiniMagick::Image.open("https://images-cn.ssl-images-amazon.com/images/I/51cFH2VK8oL._SL800_.jpg"))
Photo.create!(product_id:1, image: MiniMagick::Image.open("https://images-cn.ssl-images-amazon.com/images/I/61H7GFXdH3L._SL1000_.jpg"))
Photo.create!(product_id:1, image: MiniMagick::Image.open("https://images-cn.ssl-images-amazon.com/images/I/61y8ea8qjuL._SL1000_.jpg"))
Photo.create!(product_id:1, image: MiniMagick::Image.open("https://images-cn.ssl-images-amazon.com/images/I/61gnRs0hGYL._SL1000_.jpg"))

Product.create!(
  id: 2,
  category_id: 1,
  title: "YAMAHA ARIUS系列YDP-143B电钢琴",
  description: "真实的声音，自然的触感，充满享受的演奏，融入了先进技术的高性价比数码钢琴",
  price: 5699,
  quantity: 1000#,
  # image: MiniMagick::Image.open("https://images-cn.ssl-images-amazon.com/images/I/51GZ0F3UlkL._SL800_.jpg")#,
  # details: "高端典范<br>真实的声音，自然的触感<br>迷人的木质厢式设计和雅马哈传奇的钢琴制造工艺造就了数码钢琴的优良品质。<br>细节展示<br><img alt=\"\" src=\"https://images-cn.ssl-images-amazon.com/images/G/28/aplus_rbs/0095073249-01.jpg\">"
)

Photo.create!(product_id:2, image: MiniMagick::Image.open("https://images-cn.ssl-images-amazon.com/images/I/51GZ0F3UlkL._SL800_.jpg"))
Photo.create!(product_id:2, image: MiniMagick::Image.open("https://images-cn.ssl-images-amazon.com/images/I/611-ymMgDDL._SL1000_.jpg"))
Photo.create!(product_id:2, image: MiniMagick::Image.open("https://images-cn.ssl-images-amazon.com/images/I/515htlrmbqL._SL800_.jpg"))


Product.create!(
  id: 3,
  category_id: 2,
  title: "YAMAHA 民谣吉他 F310(原木色) ",
  description: "F系列的设计基于我们的FG系列吉他，具备杰出的耐用性和演奏表现力。",
  price: 1280,
  quantity: 1000#,
  # image: MiniMagick::Image.open("https://images-cn.ssl-images-amazon.com/images/I/51AYJIDslHL._SL1091_.jpg")#,
  # details: "型号：F310<br>面板：云杉木<br>弦长：634mm<br>箱体深：96-116mm<br><img alt=\"\" src=\"https://images-cn.ssl-images-amazon.com/images/G/28/hardline-asin/20121228-MIAB1-23.jpg\">"
)
Photo.create!(product_id:3, image: MiniMagick::Image.open("https://images-cn.ssl-images-amazon.com/images/I/51AYJIDslHL._SL1091_.jpg"))
Photo.create!(product_id:3, image: MiniMagick::Image.open("https://images-cn.ssl-images-amazon.com/images/I/61XgBwyNolL._SL1200_.jpg"))
Photo.create!(product_id:3, image: MiniMagick::Image.open("https://images-cn.ssl-images-amazon.com/images/I/41kVWmvD6BL.jpg"))
Photo.create!(product_id:3, image: MiniMagick::Image.open("https://images-cn.ssl-images-amazon.com/images/I/81UcflprWwL._SL1432_.jpg"))
Photo.create!(product_id:3, image: MiniMagick::Image.open("https://images-cn.ssl-images-amazon.com/images/I/41Vfml-CW0L.jpg"))

Product.create!(
  id: 4,
  category_id: 2,
  title: "UMA 优玛 UKULELE(尤克里里)UK-03C 23寸",
  description: "台湾 UMA 优玛 UKULELE(尤克里里)UK-03C 23寸",
  price: 350,
  quantity: 1000#,
  # image: MiniMagick::Image.open("https://images-cn.ssl-images-amazon.com/images/I/81ietCRkerL._SL1500_.jpg")#,
  # details: "UK-03C 桃花心木<br>音点：ABS<br>弦线4弦：Aquila 意大利<br>参数详情<br><img alt=\"\" src=\"https://images-cn.ssl-images-amazon.com/images/G/28/aplus_rbs/UK03S-20150921-4.jpg\">"
)

Photo.create!(product_id:4, image: MiniMagick::Image.open("https://images-cn.ssl-images-amazon.com/images/I/81ietCRkerL._SL1500_.jpg"))
Photo.create!(product_id:4, image: MiniMagick::Image.open("https://images-cn.ssl-images-amazon.com/images/I/91hTlArkMUL._SL1500_.jpg"))
Photo.create!(product_id:4, image: MiniMagick::Image.open("https://images-cn.ssl-images-amazon.com/images/I/91AOewuFbcL._SL1500_.jpg"))
Photo.create!(product_id:4, image: MiniMagick::Image.open("https://images-cn.ssl-images-amazon.com/images/I/61%2ByJBAML7L._SL1188_.jpg"))
Photo.create!(product_id:4, image: MiniMagick::Image.open("https://images-cn.ssl-images-amazon.com/images/I/81oQOsIa8eL._SL1500_.jpg"))

Product.create!(
  id: 5,
  category_id: 3,
  title: "PreSonus Eris E8 高解析度有源双功放监听音箱",
  description: "PreSonus紧凑型两分频有源监听音箱Eris系列 E8，可以准确的传递出坚实的低频和清晰的高频，独特的可选择调整的声学空间设计为用户表达出了更加准确的监听环境。它还可以控制模仿不同的听音环境，使频率响应达到较大限度的平直，使之胜于其它同等价位监听音箱。",
  price: 4580,
  quantity: 1000#,
  # image: MiniMagick::Image.open("https://images-cn.ssl-images-amazon.com/images/I/717di%2Bn7TbL._SL1339_.jpg")#,
  # details: "130瓦AB类双功放<br>8英寸Kevlar™凯芙拉纤维材料低频单元<br>平衡的XLR和非平衡的RCA接口<br>细节展示<br><img alt=\"\" src=\"https://images-cn.ssl-images-amazon.com/images/G/28/aplus_rbs/0039811507_1416469170_E8-1.jpg\">"
)

Photo.create!(product_id:5, image: MiniMagick::Image.open("https://images-cn.ssl-images-amazon.com/images/I/717di%2Bn7TbL._SL1339_.jpg"))
Photo.create!(product_id:5, image: MiniMagick::Image.open("https://images-cn.ssl-images-amazon.com/images/I/51cq9mhyxsL._SL1000_.jpg"))
Photo.create!(product_id:5, image: MiniMagick::Image.open("https://images-cn.ssl-images-amazon.com/images/I/51bdjqCIfgL._SL1000_.jpg"))
Photo.create!(product_id:5, image: MiniMagick::Image.open("https://images-cn.ssl-images-amazon.com/images/I/71T5AU9rPkL._SL1432_.jpg"))
Photo.create!(product_id:5, image: MiniMagick::Image.open("https://images-cn.ssl-images-amazon.com/images/I/71IC46jcw7L._SL1390_.jpg"))

Product.create!(
  id: 6,
  category_id: 4,
  title: "MOZA VN300 全手工小提琴 ",
  description: "MOZA提琴坚持做纯正的手工琴，由国际大师监制，高级制琴师制作，MOZA提琴每款都限量制作，当月没买到的，可以预定下月的。",
  price: 1500,
  quantity: 1000#,
  # image: MiniMagick::Image.open("https://images-cn.ssl-images-amazon.com/images/I/51xKrQ00rVL._SL800_.jpg")#,
  # details: "面板：东北云杉木，木材纹路清晰，音质更通透。背板：云南优质枫木，木质坚硬，传声效果佳<br>手工嵌线：对技术要求更严格，保证了琴箱的完整性和密封性，让音色更饱满<br>精选环保哑光漆，更均匀通透<br>琴码：德国进口琴码，根据琴体幅度打磨，更贴合，琴码弧度精准，确保音高的准确<br><img alt=\"\" src=\"https://images-cn.ssl-images-amazon.com/images/S/aplus-seller-content-images-us-east-1/AAHKV2X7AFYLW/AI0XE1FXVNHMK/B00N9QTWXS/f6TGFhMMQfiO._UX970_TTW_.jpg\">"
)

Photo.create!(product_id:6, image: MiniMagick::Image.open("https://images-cn.ssl-images-amazon.com/images/I/51xKrQ00rVL._SL800_.jpg"))
Photo.create!(product_id:6, image: MiniMagick::Image.open("https://images-cn.ssl-images-amazon.com/images/I/51RKttaIFNL._SL800_.jpg"))
Photo.create!(product_id:6, image: MiniMagick::Image.open("https://images-cn.ssl-images-amazon.com/images/I/81BL4-PaX%2BL._SL1500_.jpg"))
Photo.create!(product_id:6, image: MiniMagick::Image.open("https://images-cn.ssl-images-amazon.com/images/I/51xKrQ00rVL._SL800_.jpg"))

Product.create!(
  id: 7,
  category_id: 5,
  title: "iWord 手卷电子鼓便携式架子鼓",
  description: "可以随身携带的架子鼓。放入袋子可以随身携带到任何地方，将其展开可以立刻演奏。",
  price: 188,
  quantity: 1000#,
  # image: MiniMagick::Image.open("https://images-cn.ssl-images-amazon.com/images/I/51uvdIynJAL._SL1000_.jpg")#,
  # details: "此款不带外音无喇叭，需外接耳机或其他音响设备。<br>不支持DTX电子鼓游戏。<br>便于携带，打遍天下。<br>详情介绍<br><img alt=\"\" src=\"https://images-cn.ssl-images-amazon.com/images/S/aplus-seller-content-images-us-east-1/AAHKV2X7AFYLW/A37FG8D2K8E2I4/B01DF0H9VO/n2tNplBT3WX._UX751_TTW_.JPG\">"
)

Photo.create!(product_id:7, image: MiniMagick::Image.open("https://images-cn.ssl-images-amazon.com/images/I/51uvdIynJAL._SL1000_.jpg"))
Photo.create!(product_id:7, image: MiniMagick::Image.open("https://images-cn.ssl-images-amazon.com/images/I/81%2BnukLMmVL._SL1500_.jpg"))
Photo.create!(product_id:7, image: MiniMagick::Image.open("https://images-cn.ssl-images-amazon.com/images/I/612ZrN3SHgL._SL800_.jpg"))
Photo.create!(product_id:7, image: MiniMagick::Image.open("https://images-cn.ssl-images-amazon.com/images/I/31qPeeIquOL.jpg"))
Photo.create!(product_id:7, image: MiniMagick::Image.open("https://images-cn.ssl-images-amazon.com/images/I/51uvdIynJAL._SL1000_.jpg"))

Product.create!(
  id: 8,
  category_id: 6,
  title: "敦煌 五彩呈祥(牡丹)古筝694L",
  description: "红木制造，手工精心打磨",
  price: 3600,
  quantity: 1000#,
  # image: MiniMagick::Image.open("https://images-cn.ssl-images-amazon.com/images/I/61sUts-WY3L._SL1300_.jpg")#,
  # details: "优质桐木面板<br>尺寸：163cm * 34cm * 13cm<br>重量：7kg<br><br><img alt=\"\" src=\"https://images-cn.ssl-images-amazon.com/images/G/28/aplus_rbs/MIAH5-20150209-32.jpg\">"
)

Photo.create!(product_id:8, image: MiniMagick::Image.open("https://images-cn.ssl-images-amazon.com/images/I/61sUts-WY3L._SL1300_.jpg"))
Photo.create!(product_id:8, image: MiniMagick::Image.open("https://images-cn.ssl-images-amazon.com/images/I/71V%2B0f9gLbL._SL1300_.jpg"))
Photo.create!(product_id:8, image: MiniMagick::Image.open("https://images-cn.ssl-images-amazon.com/images/I/81zlTCLZKyL._SL1300_.jpg"))
Photo.create!(product_id:8, image: MiniMagick::Image.open("https://images-cn.ssl-images-amazon.com/images/I/71SswUfs6XL._SL1300_.jpg"))
Photo.create!(product_id:8, image: MiniMagick::Image.open("https://images-cn.ssl-images-amazon.com/images/I/615qMawCg0L._SL1300_.jpg"))

Product.create!(
  id: 9,
  category_id: 6,
  title: "XINGHAI 星海 古筝8812DQ",
  description: "巧夺天工款 专业成人考级演奏实木古筝民族乐器(供应商直送)",
  price: 2150,
  quantity: 1000#,
  # image: MiniMagick::Image.open("https://images-cn.ssl-images-amazon.com/images/I/51CjqUsFkRL._SL800_.jpg")#,
  # details: "琴体：花梨木<br>木料等级：A级<br>面板：A级考兰泡桐<br>装饰：万福图案<br><img alt=\"\" src=\"https://images-cn.ssl-images-amazon.com/images/G/28/aplus_rbs/B072BN8KGL.jpg\">"
)

Photo.create!(product_id:9, image: MiniMagick::Image.open("https://images-cn.ssl-images-amazon.com/images/I/51CjqUsFkRL._SL800_.jpg"))
Photo.create!(product_id:9, image: MiniMagick::Image.open("https://images-cn.ssl-images-amazon.com/images/I/61cup1yjE%2BL._SL800_.jpg"))
Photo.create!(product_id:9, image: MiniMagick::Image.open("https://images-cn.ssl-images-amazon.com/images/I/71g6zAC8VOL._SL800_.jpg"))
Photo.create!(product_id:9, image: MiniMagick::Image.open("https://images-cn.ssl-images-amazon.com/images/I/61Lp%2BZA5IkL._SL800_.jpg"))
Photo.create!(product_id:9, image: MiniMagick::Image.open("https://images-cn.ssl-images-amazon.com/images/I/614V3gdCjHL._SL800_.jpg"))


Product.create!(
  id: 10,
  category_id: 2,
  title: "YAMAHA 古典吉他 CG122MS(原木色) ",
  description: "饱满的共鸣、优秀的演奏性、明快的外观，集众多魅力与一身的新CG系列登场了。",
  price: 1650,
  quantity: 1000#,
  # details: "琴体：花梨木<br>木料等级：A级<br>面板：A级考兰泡桐<br>装饰：万福图案<br><img alt=\"\" src=\"https://images-cn.ssl-images-amazon.com/images/G/28/aplus_rbs/B072BN8KGL.jpg\">"
)

Photo.create!(product_id:10, image: MiniMagick::Image.open("https://images-cn.ssl-images-amazon.com/images/I/71eTXMGMvhL._SL1500_.jpg"))
Photo.create!(product_id:10, image: MiniMagick::Image.open("https://images-cn.ssl-images-amazon.com/images/I/81o3AiHq56L._SL1500_.jpg"))
Photo.create!(product_id:10, image: MiniMagick::Image.open("https://images-cn.ssl-images-amazon.com/images/I/812q%2BykCEYL._SL1500_.jpg"))
Photo.create!(product_id:10, image: MiniMagick::Image.open("https://images-cn.ssl-images-amazon.com/images/I/91NfiQXCN3L._SL1500_.jpg"))
