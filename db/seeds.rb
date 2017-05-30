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


# Initialize Product

Product.create!(
  id: 1,
  category_id: 1,
  title: "YAMAHA 雅马哈 P-115B全套88键数码钢琴",
  description: "本款钢琴仍然采用德国优秀的防锈钢线,UP119QS采用新材料，新工艺进行限量生产，精细加工。",
  price: 4199,
  quantity: 105,
  # image: MiniMagick::Image.open("") ##details
)

Photo.create!(product_id:1, image: open("http://oqqzffr5e.bkt.clouddn.com/2017-05-30-101.jpg"))
Photo.create!(product_id:1, image: open("http://oqqzffr5e.bkt.clouddn.com/2017-05-30-102.jpg"))


Product.create!(
  id: 2,
  category_id: 1,
  title: "XINGHAI 星海钢琴 XU-23JA 立式家用",
  description: "初学专业演奏立式 黑色原声钢琴 供应商直送",
  price: 16800,
  quantity: 10001,
  # image: MiniMagick::Image.open("") ##details
)

Photo.create!(product_id:2, image: open("http://oqqzffr5e.bkt.clouddn.com/2017-05-30-201.jpg"))
Photo.create!(product_id:2, image: open("http://oqqzffr5e.bkt.clouddn.com/2017-05-30-202.jpg"))
Photo.create!(product_id:2, image: open("http://oqqzffr5e.bkt.clouddn.com/2017-05-30-203.jpg"))
Photo.create!(product_id:2, image: open("http://oqqzffr5e.bkt.clouddn.com/2017-05-30-204.jpg"))
Photo.create!(product_id:2, image: open("http://oqqzffr5e.bkt.clouddn.com/2017-05-30-205.jpg"))

Product.create!(
  id: 3,
  category_id: 1,
  title: "PEARLRIVER 钢琴 家用立式钢琴UP119QS",
  description: "采用德国优秀的防锈钢线,限量生产，精细加工",
  price: 17300,
  quantity: 10001,
  # image: MiniMagick::Image.open("") ##details
)

Photo.create!(product_id:3, image: open("https://ws2.sinaimg.cn/large/006tNbRwgy1fg2alyu0xaj30rs0rsabe.jpg"))
Photo.create!(product_id:3, image: open("https://ws3.sinaimg.cn/large/006tNbRwgy1fg2am6n34xj30m80m8wfg.jpg"))
Photo.create!(product_id:3, image: open("https://ws1.sinaimg.cn/large/006tNbRwgy1fg2amdc0ugj30rs0rswh4.jpg"))
Photo.create!(product_id:3, image: open("https://ws3.sinaimg.cn/large/006tNbRwgy1fg2amlv11xj30rs0rsdhq.jpg"))

# Product.create!(
#   id: 4,
#   category_id: 2,
#   title: "Kepma D1CP 41寸民谣吉他",
#   description: "出色的品质，新颖的设计，超高的性价比",
#   price: 569,
#   quantity: 10001,
#   # image: MiniMagick::Image.open("") ##details
# )
#
# Photo.create!(product_id:4, image: MiniMagick::Image.open("https://ws2.sinaimg.cn/large/006tNbRwgy1fg2amxfiztj30rs0rsaaz.jpg"))
# Photo.create!(product_id:4, image: MiniMagick::Image.open("https://ws3.sinaimg.cn/large/006tNbRwgy1fg2anpjup8j30rs0rs0tn.jpg"))
# Photo.create!(product_id:4, image: MiniMagick::Image.open("https://ws4.sinaimg.cn/large/006tNbRwgy1fg2anou9wdj30rs0rst9g.jpg"))
# Photo.create!(product_id:4, image: MiniMagick::Image.open("https://ws2.sinaimg.cn/large/006tNbRwgy1fg2ano4oluj30rs0rsjsg.jpg"))
# Photo.create!(product_id:4, image: MiniMagick::Image.open("https://ws4.sinaimg.cn/large/006tNbRwgy1fg2anns2czj30rs0rsac5.jpg"))
#
#
# Product.create!(
#   id: 5,
#   category_id: 2,
#   title: "YAMAHA 雅马哈 FG830民谣吉他",
#   description: "全新开发的音梁结构,带来您从未聆听过的FG吉他音色",
#   price: 2290,
#   quantity: 10001,
#   # image: MiniMagick::Image.open("") ##details
# )
#
# Photo.create!(product_id:5, image: MiniMagick::Image.open("https://ws3.sinaimg.cn/large/006tNbRwgy1fg2apbas2vj30rs0rsq3v.jpg"))
# Photo.create!(product_id:5, image: MiniMagick::Image.open("https://ws1.sinaimg.cn/large/006tNbRwgy1fg2apjn4kpj30rs0rsdgo.jpg"))
#
#
#
# Product.create!(
#   id: 6,
#   category_id: 2,
#   title: "Fender 芬德 Classic Design系列 0961518021 CD-140S",
#   description: "实木云杉作面板，桃花心木作背侧板，提供饱满的共鸣音色以及极好的性价比。",
#   price: 1499,
#   quantity: 10001,
#   # image: MiniMagick::Image.open("") ##details
# )
#
# Photo.create!(product_id:6, image: MiniMagick::Image.open("https://ws3.sinaimg.cn/large/006tKfTcgy1fg2d6u28d4j30rs0rsaer.jpg"))
#
#
#
# Product.create!(
#   id: 7,
#   category_id: 2,
#   title: "Epiphone LP STD PlusTop PRO HS 电吉他 ",
#   description: "经典LAS PAUL琴型电吉他，加强版，可切单",
#   price: 3050,
#   quantity: 10001,
#   # image: MiniMagick::Image.open("") ##details
# )
#
# Photo.create!(product_id:7, image: MiniMagick::Image.open("https://ws4.sinaimg.cn/large/006tNbRwgy1fg2aqiyb6nj30rs0rsq46.jpg"))
# Photo.create!(product_id:7, image: MiniMagick::Image.open("https://ws2.sinaimg.cn/large/006tNbRwgy1fg2aqw7pcxj30rs0rsq3n.jpg"))
# Photo.create!(product_id:7, image: MiniMagick::Image.open("https://ws4.sinaimg.cn/large/006tNbRwgy1fg2ar2o5ovj30rs0rsdht.jpg"))
# Photo.create!(product_id:7, image: MiniMagick::Image.open("https://ws3.sinaimg.cn/large/006tNbRwgy1fg2ardzjogj30rs0rsaca.jpg"))
# Photo.create!(product_id:7, image: MiniMagick::Image.open("https://ws1.sinaimg.cn/large/006tNbRwgy1fg2arksdcmj30rs0rs75r.jpg"))
#
#
# Product.create!(
#   id: 8,
#   category_id: 2,
#   title: "TOM 高端ukulele 经典款23寸",
#   description: "欧洲精细做工,配备意大利正品aquila进口弦线，牛骨弦枕",
#   price: 599,
#   quantity: 10001,
#   # image: MiniMagick::Image.open("") ##details
# )
#
# Photo.create!(product_id:8, image: MiniMagick::Image.open("https://ws4.sinaimg.cn/large/006tKfTcgy1fg2euffr55j30rs0rs0w1.jpg"))
# Photo.create!(product_id:8, image: MiniMagick::Image.open("https://ws4.sinaimg.cn/large/006tNbRwgy1fg2asf7xpdj30dd0dwjrv.jpg"))
# Photo.create!(product_id:8, image: MiniMagick::Image.open("https://ws2.sinaimg.cn/large/006tNbRwgy1fg2asm29e1j308s0dwwf9.jpg"))
# Photo.create!(product_id:8, image: MiniMagick::Image.open("https://ws1.sinaimg.cn/large/006tNbRwgy1fg2asstr1wj308s0dw751.jpg"))
#
#
# Product.create!(
#   id: 9,
#   category_id: 3,
#   title: "Genelec 真力 M030AM-5 有源二分频工作室监听音箱",
#   description: "芬兰原产",
#   price: 3499,
#   quantity: 10001,
#   # image: MiniMagick::Image.open("") ##details
# )
#
# Photo.create!(product_id:9, image: MiniMagick::Image.open("https://ws3.sinaimg.cn/large/006tNbRwgy1fg2athana2j30xe15oq8i.jpg"))
# Photo.create!(product_id:9, image: MiniMagick::Image.open("https://ws3.sinaimg.cn/large/006tNbRwgy1fg2atok0bgj30t715o445.jpg"))
# Photo.create!(product_id:9, image: MiniMagick::Image.open("https://ws2.sinaimg.cn/large/006tNbRwgy1fg2atucikgj315o15ogsi.jpg"))
# Photo.create!(product_id:9, image: MiniMagick::Image.open("https://ws3.sinaimg.cn/large/006tNbRwgy1fg2au08iuaj30ws15oafs.jpg"))
#
#
# Product.create!(
#   id: 10,
#   category_id: 3,
#   title: "PreSonus Eris E8 高解析度有源双功放监听音箱",
#   description: "准确传递出坚实的低频和清晰的高频，独特的可选择调整的声学空间设计",
#   price: 4580,
#   quantity: 10001,
#   # image: MiniMagick::Image.open("") ##details
# )
#
# Photo.create!(product_id:10, image: MiniMagick::Image.open("https://ws2.sinaimg.cn/large/006tNbRwgy1fg2aui9gw0j30rs117wik.jpg"))
# Photo.create!(product_id:10, image: MiniMagick::Image.open("https://ws2.sinaimg.cn/large/006tNbRwgy1fg2auo8jt5j30rs0ijt9l.jpg"))
# Photo.create!(product_id:10, image: MiniMagick::Image.open("https://ws2.sinaimg.cn/large/006tNbRwgy1fg2auu8flij30rs0ijmxw.jpg"))
# Photo.create!(product_id:10, image: MiniMagick::Image.open("https://ws3.sinaimg.cn/large/006tNbRwgy1fg2av3s070j30rs14ljw1.jpg"))
# Photo.create!(product_id:11, image: MiniMagick::Image.open("https://ws4.sinaimg.cn/large/006tNbRwgy1fg2avibmgej30rs13sdk7.jpg"))
# Photo.create!(product_id:11, image: MiniMagick::Image.open("https://ws2.sinaimg.cn/large/006tNbRwgy1fg2avne6ytj30rs12mtce.jpg"))
# Photo.create!(product_id:11, image: MiniMagick::Image.open("https://ws3.sinaimg.cn/large/006tNbRwgy1fg2avsy6efj30rs0ij76b.jpg"))
#
#
# Product.create!(
#   id: 11,
#   category_id: 4,
#   title: "Christina 克莉丝蒂娜 S800",
#   description: "进口欧料精选独板纯手工收藏级小提琴，精品中的精品",
#   price: 6480,
#   quantity: 10001,
#   # image: MiniMagick::Image.open("") ##details
# )
#
# Photo.create!(product_id:11, image: MiniMagick::Image.open("https://ws4.sinaimg.cn/large/006tNbRwgy1fg2aw312pij30rs0rswfr.jpg"))
# Photo.create!(product_id:11, image: MiniMagick::Image.open("https://ws2.sinaimg.cn/large/006tNbRwgy1fg2awckpkpj30rs0rswkr.jpg"))
# Photo.create!(product_id:11, image: MiniMagick::Image.open("https://ws1.sinaimg.cn/large/006tNbRwgy1fg2awk2bl5j30rs0rsgqx.jpg"))
# Photo.create!(product_id:11, image: MiniMagick::Image.open("https://ws3.sinaimg.cn/large/006tNbRwgy1fg2awpuocej30rs0rs40j.jpg"))
# Photo.create!(product_id:11, image: MiniMagick::Image.open("https://ws1.sinaimg.cn/large/006tNbRwgy1fg2ax3klj7j30rs0rsdih.jpg"))
#
# Product.create!(
#   id: 12,
#   category_id: 4,
#   title: "MOZA VN300专业考级全手工小提琴",
#   description: "国际大师监制，高级制琴师制作",
#   price: 780,
#   quantity: 10001,
#   # image: MiniMagick::Image.open("") ##details
# )
#
# Photo.create!(product_id:12, image: MiniMagick::Image.open("https://ws3.sinaimg.cn/large/006tNbRwgy1fg2axenxppj30m80m8754.jpg"))
# Photo.create!(product_id:12, image: MiniMagick::Image.open("https://ws2.sinaimg.cn/large/006tNbRwgy1fg2axvc013j315o15oacr.jpg"))
# Photo.create!(product_id:12, image: MiniMagick::Image.open("https://ws2.sinaimg.cn/large/006tNbRwgy1fg2ay0hmonj30m80m8dh8.jpg"))
#
#
# Product.create!(
#   id: 13,
#   category_id: 5,
#   title: "电子架子鼓",
#   description: "便于携带，打遍天下",
#   price: 350,
#   quantity: 10001,
#   # image: MiniMagick::Image.open("") ##details
# )
#
# Photo.create!(product_id:13, image: MiniMagick::Image.open("https://ws2.sinaimg.cn/large/006tNbRwgy1fg2aye2sgfj30rs0rs40f.jpg"))
# Photo.create!(product_id:13, image: MiniMagick::Image.open("https://ws3.sinaimg.cn/large/006tNbRwgy1fg2ayk9x3pj30rs0rs405.jpg"))
# Photo.create!(product_id:13, image: MiniMagick::Image.open("https://ws4.sinaimg.cn/large/006tNbRwgy1fg2ayrk70ij30rs0rsjsv.jpg"))
# Photo.create!(product_id:13, image: MiniMagick::Image.open("https://ws3.sinaimg.cn/large/006tNbRwgy1fg2az1ahfyj30rs0rswgw.jpg"))
#
# Product.create!(
#   id: 14,
#   category_id: 5,
#   title: "Medeli美得理专业架子鼓 DD526",
#   description: "智能电鼓魔鲨成人专业电子鼓",
#   price: 6380,
#   quantity: 10001,
#   # image: MiniMagick::Image.open("") ##details
# )
#
# Photo.create!(product_id:14, image: MiniMagick::Image.open("https://ws2.sinaimg.cn/large/006tNbRwgy1fg2azan1bpj30m80m8jsk.jpg"))
# Photo.create!(product_id:14, image: MiniMagick::Image.open("https://ws4.sinaimg.cn/large/006tNbRwgy1fg2azi2733j30m80m8zla.jpg"))
# Photo.create!(product_id:14, image: MiniMagick::Image.open("https://ws2.sinaimg.cn/large/006tNbRwgy1fg2azpecsrj30m80m8q3e.jpg"))
# Photo.create!(product_id:14, image: MiniMagick::Image.open("https://ws2.sinaimg.cn/large/006tNbRwgy1fg2azwdkluj30m80m8q5a.jpg"))
#
#
# Product.create!(
#   id: 15,
#   category_id: 2,
#   title: "Schecter Omen Solo-6 电吉他(胡桃色) ",
#   description: "高性价比OMEN系列，经典SOLO型琴体",
#   price: 2090,
#   quantity: 10001,
#   # image: MiniMagick::Image.open("") ##details
# )
#
# Photo.create!(product_id:15, image: MiniMagick::Image.open("https://ws1.sinaimg.cn/large/006tKfTcgy1fg2fjq37c0j30rs0rswip.jpg"))
# Photo.create!(product_id:15, image: MiniMagick::Image.open("https://ws1.sinaimg.cn/large/006tNbRwgy1fg2b0gmsulj30hv15omzi.jpg"))
# Photo.create!(product_id:15, image: MiniMagick::Image.open("https://ws3.sinaimg.cn/large/006tNbRwgy1fg2b0ncw0zj30rs15on12.jpg"))
# Photo.create!(product_id:15, image: MiniMagick::Image.open("https://ws4.sinaimg.cn/large/006tNbRwgy1fg2b0x1xatj30rs15odk4.jpg"))
# Photo.create!(product_id:15, image: MiniMagick::Image.open("https://ws3.sinaimg.cn/large/006tNbRwgy1fg2b12h3asj30rs15on1f.jpg"))
#
#
# Product.create!(
#   id: 16,
#   category_id: 2,
#   title: "YAMAHA 雅马哈 古典吉他 CG122MC(原木色)",
#   description: "饱满的共鸣、优秀的演奏性、明快的外观，集众多魅力与一身的新CG系列",
#   price: 1650,
#   quantity: 10001,
#   # image: MiniMagick::Image.open("") ##details
# )
#
# Photo.create!(product_id:16, image: MiniMagick::Image.open("https://ws3.sinaimg.cn/large/006tKfTcgy1fg2evi2s0hj30rs0rsdjt.jpg"))
# Photo.create!(product_id:16, image: MiniMagick::Image.open("https://ws3.sinaimg.cn/large/006tNbRwgy1fg2b1jd2fwj30x60tcdhx.jpg"))
# Photo.create!(product_id:16, image: MiniMagick::Image.open("https://ws4.sinaimg.cn/large/006tNbRwgy1fg2b1q8xojj315o0rsjxc.jpg"))
# Photo.create!(product_id:16, image: MiniMagick::Image.open("https://ws2.sinaimg.cn/large/006tNbRwgy1fg2b1xw0wlj315o0rsgqw.jpg"))
# Photo.create!(product_id:16, image: MiniMagick::Image.open("https://ws4.sinaimg.cn/large/006tNbRwgy1fg2b26530tj315o0rtguu.jpg"))
#
#
# Product.create!(
#   id: 17,
#   category_id: 1,
#   title: "Pearl River 珠江 艾茉森电钢琴F-1",
#   description: "完美的音色、震撼的共鸣效果和操控自如的弹奏舒适感",
#   price: 4280,
#   quantity: 10001,
#   # image: MiniMagick::Image.open("") ##details
# )
#
# Photo.create!(product_id:17, image: MiniMagick::Image.open("https://ws3.sinaimg.cn/large/006tNbRwgy1fg2b2orx28j3104104mz3.jpg"))
# Photo.create!(product_id:17, image: MiniMagick::Image.open("https://ws4.sinaimg.cn/large/006tNbRwgy1fg2b2uv4bwj3104104acj.jpg"))
# Photo.create!(product_id:17, image: MiniMagick::Image.open("https://ws3.sinaimg.cn/large/006tNbRwgy1fg2b30ebiej310410475i.jpg"))
# Photo.create!(product_id:17, image: MiniMagick::Image.open("https://ws3.sinaimg.cn/large/006tNbRwgy1fg2b36ldx1j3104104gmo.jpg"))
#
#
# Product.create!(
#   id: 18,
#   category_id: 1,
#   title: "Roland 罗兰 数码钢琴 RP301-SB",
#   description: "黑色 印尼原装进口",
#   price: 5780,
#   quantity: 10001,
#   # image: MiniMagick::Image.open("") ##details
# )
#
# Photo.create!(product_id:18, image: MiniMagick::Image.open("https://ws2.sinaimg.cn/large/006tNbRwgy1fg2b3t7215j315o15on0b.jpg"))
# Photo.create!(product_id:18, image: MiniMagick::Image.open("https://ws1.sinaimg.cn/large/006tNbRwgy1fg2b3z9eaaj315o15o41i.jpg"))
#
#
# Product.create!(
#   id: 19,
#   category_id: 3,
#   title: "JBL LSR 305-CH 5寸有源监听音箱",
#   description: "HIFI 发烧专用音箱",
#   price: 1199,
#   quantity: 0,
#   # image: MiniMagick::Image.open("") ##details
# )
#
# Photo.create!(product_id:19, image: MiniMagick::Image.open("https://ws1.sinaimg.cn/large/006tNbRwgy1fg2b4cye4wj30rn15o44s.jpg"))
# Photo.create!(product_id:19, image: MiniMagick::Image.open("https://ws1.sinaimg.cn/large/006tNbRwgy1fg2b4ir5lpj30oj15otct.jpg"))
# Photo.create!(product_id:19, image: MiniMagick::Image.open("https://ws1.sinaimg.cn/large/006tNbRwgy1fg2b4oq6daj30g60rs76s.jpg"))
#
#
# Product.create!(
#   id: 20,
#   category_id: 4,
#   title: "红棉大提琴 C038 手工大提琴",
#   description: "大提琴乐器 (C038 4/4)",
#   price: 3080,
#   quantity: 10001,
#   # image: MiniMagick::Image.open("") ##details
# )
#
# Photo.create!(product_id:20, image: MiniMagick::Image.open("https://ws3.sinaimg.cn/large/006tNbRwgy1fg2b51fha3j30rs0rsab3.jpg"))
# Photo.create!(product_id:20, image: MiniMagick::Image.open("https://ws4.sinaimg.cn/large/006tNbRwgy1fg2b58ovgbj30rs0rsjsc.jpg"))
# Photo.create!(product_id:20, image: MiniMagick::Image.open("https://ws3.sinaimg.cn/large/006tNbRwgy1fg2b5htcizj30m80m8wfq.jpg"))
# Photo.create!(product_id:20, image: MiniMagick::Image.open("https://ws2.sinaimg.cn/large/006tNbRwgy1fg2b5ofjfbj315o0rs7bo.jpg"))
# Photo.create!(product_id:20, image: MiniMagick::Image.open("https://ws4.sinaimg.cn/large/006tNbRwgy1fg2b5uvnggj30m80m8myv.jpg"))
