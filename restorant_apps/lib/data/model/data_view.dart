class DataResto {
  String nameMenu;
  String nameRestorant;
  String location;
  String categoryResto;
  String informationResto;
  String descriptionMenu;
  String openDays;
  String openClock;
  String imgResto;
  String imgMenu;
  double valueRange;
  double price;
  double priceDelivery;
  double distance;
  var menu;

  DataResto({
    this.nameMenu,
    this.nameRestorant,
    this.location,
    this.categoryResto,
    this.informationResto,
    this.descriptionMenu,
    this.openDays,
    this.openClock,
    this.imgResto,
    this.imgMenu,
    this.valueRange,
    this.price,
    this.priceDelivery,
    this.distance,
    this.menu,
  });
}

var viewDataRecommen = [
  DataResto(
    imgResto: 'asset/image/resto/Nasi Padang.jpg',
    nameRestorant: 'Nasi Padang Kedai Baru',
    location: 'Jl. Kedung Cowek (Ampera Kedai Baru)',
    categoryResto: 'Aneka Nasi, Nasi Padang',
    informationResto:
        'Sebuah Rumah Makan Yang Menyediakan Makanan Khas Padang, dengan cita rasa yang khas',
    openDays: 'Senin-Minggu',
    openClock: '09:00-21:00',
    valueRange: 4.3,
    distance: 0.7,
    priceDelivery: 5.000,
    menu: [
      DataResto(
        imgMenu:
            'https://d1sag4ddilekf6.cloudfront.net/compressed/items/6-CY6KAZEBHA51R6-CY6KAZLXNAMHBA/photo/menueditor_item_156010644cf745fd9fb50565304a9106_1604425471018119319.jpg',
        nameMenu: 'Nasi Rendang Daging',
        descriptionMenu:
            'Nasi + Rendang Daging + Sayur Sambal, Daging Yang Dimasak Dengan Santan Dan Bumbu Rempah Pilihan, Diolah Hingga Bumbu Meresap Sempurna',
        price: 25.000,
        priceDelivery: 5.000,
      ),
      DataResto(
        imgMenu:
            'https://d1sag4ddilekf6.cloudfront.net/compressed/items/IDITE2020011313062618844/photo/9335b43c5d9a44c08c2e80ede5b5b35b_1599204210120075241.jpeg',
        nameMenu: 'Rendang Daging',
        descriptionMenu:
            '1 Potong + Sayur Sambal.  Daging Yang Dimasak Dengan Santan Dan Bumbu Rempah Pilihan, Diolah Hingga Bumbu Meresap Sempurna',
        price: 20.000,
        priceDelivery: 5.000,
      ),
      DataResto(
        imgMenu:
            'https://d1sag4ddilekf6.cloudfront.net/compressed/items/6-CY6KAZEBHA51R6-CY6KAZLYDA6EL6/photo/menueditor_item_fd287ba038b9472ea30ceccf032ea4a7_1604425558330620742.jpg',
        nameMenu: 'Nasi Gulai Kikil',
        descriptionMenu: 'Nasi + Gulai Kikil + Sayur Sambal',
        price: 30.000,
        priceDelivery: 5.000,
      ),
      DataResto(
        imgMenu:
            'https://d1sag4ddilekf6.cloudfront.net/compressed/items/6-CY6KAZEBHA51R6-CY6KAZLYTCM2CA/photo/menueditor_item_d4174687843545299436ed01befe9d15_1604425694916629944.jpg',
        nameMenu: 'Nasi Ikan Laut Balado',
        descriptionMenu: 'Nasi +  Ikan balado + Sayur Sambal',
        price: 20.000,
        priceDelivery: 5.000,
      ),
      DataResto(
        imgMenu:
            'https://d1sag4ddilekf6.cloudfront.net/compressed/items/IDITE2020011313402596390/photo/b3e93b04525d49c48a153dcd65f56414_1590125536188484301.jpg',
        nameMenu: 'Jeruk Anget',
        descriptionMenu: 'Jus Jeruk Segar Mengandung Vitamin Dan Mineral Alami',
        price: 6.000,
        priceDelivery: 5.000,
      ),
      DataResto(
        imgMenu:
            'https://d1sag4ddilekf6.cloudfront.net/compressed/items/IDITE2021021415150391686/photo/97df33a1a23545cdb15b5b3a9b1bc9bd_1613462089552720835.jpg',
        nameMenu: 'Teh Hangat',
        descriptionMenu: 'Teh Hangat Kaya Akan Kandungan Anti-Oksidan ',
        price: 6.000,
        priceDelivery: 5.000,
      ),
    ],
  ),
  DataResto(
    imgResto: 'asset/image/resto/mc.jpeg',
    nameRestorant: "McDonald's",
    location: 'Jl. Raya Mulyosari, Mulyorejo, Surabaya.',
    categoryResto: 'Aneka Ayam,Burger,Cemilan,Kopi,Ayam Goreng',
    informationResto:
        'Makanan Cepat saji yang banyak digemari dengan menu andalan Aneka Ayam,Burger,Cemilan,Kopi,Ayam Goreng',
    openDays: 'Senin-Minggu',
    openClock: '06:00-22:00',
    valueRange: 4.4,
    distance: 5,
    priceDelivery: 9.000,
    menu: [
      DataResto(
        imgMenu:
            'https://d1sag4ddilekf6.cloudfront.net/compressed/items/IDITE20201108153437012568/photo/4165e58e_TPO110042.jpg',
        nameMenu: 'MySpicy Meal Medium',
        price: 50.000,
        descriptionMenu: 'Meal Medium dengan extra makanan yang nikmat',
        priceDelivery: 9.000,
      ),
      DataResto(
        imgMenu:
            'https://d1sag4ddilekf6.cloudfront.net/compressed/items/IDITE20200529141817026166/photo/0e589382_TPO111272.jpg',
        nameMenu: 'Nasi Uduk McD Ayam Suwir',
        descriptionMenu: 'Nasi Uduk dengan extra makanan yang nikmat',
        price: 25.000,
        priceDelivery: 9.000,
      ),
      DataResto(
        imgMenu:
            'https://d1sag4ddilekf6.cloudfront.net/compressed/items/IDITE20200928152908011874/photo/edcf80fb_TPO217073_5.jpg',
        nameMenu: 'Family Time Bertiga McD',
        descriptionMenu:
            'Sangat cocok dimakan bersama keluarga dengan mendapatkan extra makanan yang nikmat',
        price: 85.000,
        priceDelivery: 9.000,
      ),
      DataResto(
        imgMenu:
            'https://d1sag4ddilekf6.cloudfront.net/compressed/items/IDITE20200607232325037540/photo/029d312d_TPO134034.jpg',
        nameMenu: 'Boba Icead Coffe Float',
        descriptionMenu:
            'Minuman kekinian dengan cita rasa yang nikmat, dengan toping boba',
        price: 25.000,
        priceDelivery: 9.000,
      ),
      DataResto(
        imgMenu:
            'https://d1sag4ddilekf6.cloudfront.net/compressed/items/IDITE20200505000821011444/photo/acbc0ee2_TPO133126.jpg',
        nameMenu: 'Boba Chocolate Float',
        descriptionMenu:
            'Minuman kekinian dengan cita rasa yang nikmat, dengan toping boba',
        price: 24.000,
        priceDelivery: 9.000,
      ),
      DataResto(
        imgMenu:
            'https://d1sag4ddilekf6.cloudfront.net/compressed/items/IDITE20200505000822016131/photo/6c650571_TPO133105_1.jpg',
        nameMenu: 'Color Suprise McFlurry',
        price: 15.000,
        priceDelivery: 9.000,
      ),
    ],
  ),
  DataResto(
    imgResto: 'asset/image/resto/Zest chicken.jpeg',
    nameRestorant: 'Zest Chicken',
    location: 'JL Pogot lama , Tanah Kali Kedinding, surabaya',
    categoryResto: 'Aneka Ayam, Ayam Goreng',
    informationResto:
        'Restoran Siap Saji Asli Indonesia Dengan Harga Yang sangat Terjangkau dan Dengan Aneka Menu Aneka Ayam',
    openDays: 'Senin-Minggu',
    openClock: '10:00-21:30',
    valueRange: 4.7,
    distance: 0.6,
    priceDelivery: 5.000,
    menu: [
      DataResto(
        imgMenu:
            'https://d1sag4ddilekf6.cloudfront.net/compressed/items/6-CYWVLCKXEEVANT-CYWVLCLBKEDYEE/photo/menueditor_item_2fda1ec5e93c48f2be70dcc1f1490a4e_1581041611019113466.jpg',
        nameMenu: 'Hot Spicy Teriyaki',
        descriptionMenu:
            'Ayam Krispi Tanpa Tulang Disiram Dengan Saus Teriyaki Pedas',
        price: 20.000,
        priceDelivery: 5.000,
      ),
      DataResto(
        imgMenu:
            'https://d1sag4ddilekf6.cloudfront.net/compressed/items/6-CYWVLCKXEEVANT-CYWVLCLBBEK1LN/photo/menueditor_item_ecb6719a508e4cb6a3ab09870d9492a2_1581041456368633842.jpg',
        nameMenu: 'Nasgor Sambalado',
        descriptionMenu: 'Nasi Goreng Ayam Bumbu Balado Pedas Level',
        price: 19.000,
        priceDelivery: 5.000,
      ),
      DataResto(
        imgMenu:
            'https://d1sag4ddilekf6.cloudfront.net/compressed/items/6-CYWVLCKXEEVANT-CYWVLCK2RYBYRT/photo/menueditor_item_139f211f10dd41c6ad30940966030c26_1581040300799855230.jpg',
        nameMenu: 'French Fries Aneka Rasa Double',
        descriptionMenu: 'Kentang Goreng Rasa Keju, Barbekiu & Balado',
        price: 25.000,
        priceDelivery: 5.000,
      ),
      DataResto(
        imgMenu:
            'https://d1sag4ddilekf6.cloudfront.net/compressed/items/6-CYWVLCKXEEVANT-CYWVLCLCAXW2A2/photo/menueditor_item_5a77bee7682545adabf2255f1dc51c34_1580982850558067172.jpg',
        nameMenu: 'Zest Cream',
        descriptionMenu: '2 Scoop Es Cream',
        price: 10.000,
        priceDelivery: 5.000,
      ),
      DataResto(
        imgMenu:
            'https://d1sag4ddilekf6.cloudfront.net/compressed/items/6-CYWVLCKXEEVANT-CYWVLCLBV3XBNJ/photo/menueditor_item_1d7ff75b015b4e5a9c40db009ff7a760_1580981988742162472.jpg',
        nameMenu: 'Orange Blend',
        descriptionMenu: 'Jeruk Khas Zest Dengan Toping Ice Cream Vanilla',
        price: 16.000,
        priceDelivery: 5.000,
      ),
      DataResto(
        imgMenu:
            'https://d1sag4ddilekf6.cloudfront.net/compressed/items/6-CYWVLCKXEEVANT-CYWVLCLBT6L3A2/photo/menueditor_item_91931ae47fb1481c8d1cae39a2a7e093_1580981914676987848.jpg',
        nameMenu: 'Milk Shake Strawberry',
        descriptionMenu: 'Strawberry, susu Dan Ice Cream Shake',
        price: 16.000,
        priceDelivery: 5.000,
      ),
    ],
  ),
  DataResto(
    imgResto: 'asset/image/resto/kober mie.jpeg',
    nameRestorant: 'Kober Mie Setan',
    location: 'Jl. Kaca Piring, Ketabang, Genteng',
    categoryResto: 'Aneka Mie Pedas, Mie Noodles',
    informationResto:
        'Restoran Yang menyediakan aneka makanan Mie, Dimsum, Sushi dengan cita rasa pedas yang khas ',
    openDays: 'Senin-Minggu',
    openClock: '10:00-21:30',
    valueRange: 4.6,
    distance: 3.0,
    priceDelivery: 11.000,
    menu: [
      DataResto(
        imgMenu:
            'https://d1sag4ddilekf6.cloudfront.net/compressed/items/6-CYN2EA3KMA4UAE-CYN2EA33JZLUV6/photo/a72ccc016e254e948685a0a425c68c38_1578047748341685316.jpg',
        nameMenu: 'Mie Angle',
        descriptionMenu:
            'menu Mie tanpa cabai sehingga tidak menimbulkan pedas',
        price: 12.000,
        priceDelivery: 11.000,
      ),
      DataResto(
        imgMenu:
            'https://d1sag4ddilekf6.cloudfront.net/compressed/items/6-CYN2EA3KMA4UAE-CYN2EA32RVBANX/photo/e9ccd845e51543c3a1c94a313e3ed790_1578047748501811264.jpg',
        nameMenu: 'Mie Iblis',
        descriptionMenu:
            'menu untuk mi rasa manis kecap dengan tingkatan level, yaitu S, M, dan L.',
        price: 13.000,
        priceDelivery: 11.000,
      ),
      DataResto(
        imgMenu:
            'https://d1sag4ddilekf6.cloudfront.net/compressed/items/6-CYN2EA3KMA4UAE-CYN2EA3ZV7KWE6/photo/3bb09196cbd7452b9f765b38ef2d7f25_1578047748651287441.jpg',
        nameMenu: 'Mie Setan',
        descriptionMenu:
            'menu untuk mi polos dengan tingkatan level satu hingga lima.',
        price: 12.000,
        priceDelivery: 11.000,
      ),
      DataResto(
        imgMenu:
            'https://d1sag4ddilekf6.cloudfront.net/compressed/items/6-CYN2EA3KMA4UAE-CYN2EA3YEFDBNN/photo/e3c7e355c5df4627a79cb980ef0084e6_1615717883458747948.jpg',
        nameMenu: 'Es Genderuwo',
        descriptionMenu:
            'Minuman dengan berbagai jenis didalamnya dengan Manisnya susu dan segarnya potongan buah-buahan membuat Es Genderuwo menjadi minuman primadona di berbagai restoran mi setan.',
        price: 12.000,
        priceDelivery: 11.000,
      ),
      DataResto(
        imgMenu:
            'https://d1sag4ddilekf6.cloudfront.net/compressed/items/6-CYN2EA3KMA4UAE-CYN2EA3WT33TBA/photo/4fb66eb02e4a4bb88dd9e086d8d94f76_1578047754931227196.jpg',
        nameMenu: 'Es Tuyul',
        descriptionMenu:
            'Minuman dengan berbagai jenis didalamnya dengan Manisnya susu dan segarnya potongan buah-buahan membuat Es Genderuwo menjadi minuman primadona di berbagai restoran mi setan.',
        price: 7.000,
        priceDelivery: 11.000,
      ),
      DataResto(
        imgMenu:
            'https://d1sag4ddilekf6.cloudfront.net/compressed/items/6-CYN2EA3KMA4UAE-CY5BGVCHLRAFGA/photo/29ed1127d81b4c388f010f79ed13671e_1595059798199654112.jpg',
        nameMenu: 'Hot Tea Tarik',
        descriptionMenu: 'Minuan tea hangat dengan rasa yang manis',
        price: 8.000,
        priceDelivery: 11.000,
      ),
    ],
  ),
  DataResto(
    imgResto: 'asset/image/resto/starbuck.jpeg',
    nameRestorant: 'Starbucks',
    location: 'Ground Floor Grand City Surabaya, Jl. Walikota Mustajab',
    categoryResto: 'Kopi, Roti & Kue, beverages',
    informationResto:
        'Kedai Kopi yang menyajikan kopi, minuman panas berbasis espresso, minuman dingin dan panas lainnya, makanan ringan, serta cangkir dan bijih kopi.',
    openDays: 'Senin-Minggu',
    openClock: '09:00-21:00',
    valueRange: 4.9,
    distance: 3.3,
    priceDelivery: 5.000,
    menu: [
      DataResto(
        imgMenu:
            'https://d1sag4ddilekf6.cloudfront.net/compressed/items/6-CY4DJVCCJP5AAX-C2D2SCJZKFVGAX/photo/1fb7cf7519d74da78083044e56beaee1_1622481022267909649.jpg',
        nameMenu: 'Classic Caramel Macchiato',
        descriptionMenu: 'Dapatkan Minuman 1L dengan Harga Spesial',
        price: 100.000,
        priceDelivery: 5.000,
      ),
      DataResto(
        imgMenu:
            'https://d1sag4ddilekf6.cloudfront.net/compressed/items/IDITE20210412171120172771/photo/a278943e5fb14cd08f1c7ff09752c46e_1618419800723425333.jpg',
        nameMenu: 'Emerald Green Tea latte',
        descriptionMenu: 'Dapatkan Minuman 1L dengan Harga Spesial',
        price: 100.000,
        priceDelivery: 5.000,
      ),
      DataResto(
        imgMenu:
            'https://d1sag4ddilekf6.cloudfront.net/compressed/items/IDITE20210412171121025477/photo/4514361ebe5645a2b1aa2246221026c5_1618419801176808396.jpg',
        nameMenu: 'Creamy Vanilla Latte',
        descriptionMenu: 'Dapatkan Minuman 1L dengan Harga Spesial',
        price: 100.000,
        priceDelivery: 5.000,
      ),
      DataResto(
        imgMenu:
            'https://d1sag4ddilekf6.cloudfront.net/compressed/items/6-CY4DJVCCJP5AAX-CZMERTMHUGBFNN/photo/4df8eaf04b824043846f0485848578b4_1596474167953285157.jpg',
        nameMenu: 'Classic Tuna Tostie ',
        descriptionMenu: 'Nikmati roti khas kami',
        price: 68.000,
        priceDelivery: 5.000,
      ),
      DataResto(
        imgMenu:
            'https://d1sag4ddilekf6.cloudfront.net/compressed/items/IDITE20210501090028368072/photo/ca7efe2022f14703a985c36aa0234eeb_1619975584163454626.jpg',
        nameMenu: 'Spicy Tuna Cheese + Caramel Macchiato',
        descriptionMenu: 'Spicy Tuna Cheese Baguette + Caramel Macchiato',
        price: 38.000,
        priceDelivery: 5.000,
      ),
      DataResto(
        imgMenu:
            'https://d1sag4ddilekf6.cloudfront.net/compressed/items/IDITE20210501090028416445/photo/1e6ed7fe9fa64be0a4c3cdee1596e7e5_1619975584455797302.jpg',
        nameMenu: 'Summer Almond Peach Puff + Carammel Macchiato',
        descriptionMenu: 'Summer Almond Peach Puff + Carammel Macchiato',
        price: 65.000,
        priceDelivery: 5.000,
      ),
    ],
  ),
];

var viewDataOther = [
  DataResto(
    imgResto: 'asset/image/resto/janji jiwa.jpg',
    nameRestorant: 'Janji Jiwa & Jiwa Toast',
    location: 'BG Junction, Jl. Bubutan Surabaya',
    categoryResto: 'Kopi',
    informationResto: 'Minuman Cofe Kekinian Dengan Rasa ciri Khas Yang Nikmat',
    openDays: 'Senin-Minggu',
    openClock: '10:00-21:00',
    valueRange: 4.8,
    distance: 4.0,
    priceDelivery: 13.000,
    menu: [
      DataResto(
        imgMenu:
            'https://d1sag4ddilekf6.cloudfront.net/compressed/items/6-CZAZR2LKA3LBFA-CZNKNB5YL6VTBA/photo/4f98e487c68f45ce9caf32819d2154b8_1599825071205857892.jpg',
        nameMenu: 'Beef Truffle Mayo',
        descriptionMenu:
            'Daging Sapi Dengan Omellete, Keju Dan Garlic Serta Saus Truffle Mayo',
        price: 32.000,
        priceDelivery: 13.000,
      ),
      DataResto(
        imgMenu:
            'https://d1sag4ddilekf6.cloudfront.net/compressed/items/6-CZAZR2LKA3LBFA-CZKEVGECVXAHEN/photo/cc7beb14cc9d4b869143b4e750088ebf_1599825072394453970.jpg',
        nameMenu: 'Egg and Cheese',
        descriptionMenu:
            'Perpaduan Klasik Antara Omelet Dan Keju Dengan Saus Ala Jiwa Toast',
        price: 22.000,
        priceDelivery: 13.000,
      ),
      DataResto(
        imgMenu:
            'https://d1sag4ddilekf6.cloudfront.net/compressed/items/6-CZAZR2LKA3LBFA-CZLUHEAFNGD2TT/photo/77c5bb9dc5bc45f6a5a8d3fa49fe0bf6_1599825056618526458.jpg',
        nameMenu: 'choco Nougat',
        descriptionMenu:
            'Roti panggang Menggunakan Butter Cream Kacang, Cream dan cokelat',
        price: 35.000,
        priceDelivery: 13.000,
      ),
      DataResto(
        imgMenu:
            'https://d1sag4ddilekf6.cloudfront.net/compressed/items/IDITE20210514063409184053/photo/05907cf92b2740c2b038877ce694fba2_1621357594221350168.jpg',
        nameMenu: 'Legendary',
        descriptionMenu: 'Teh Bunga Telang, Lemonade dan berry',
        price: 21.000,
        priceDelivery: 13.000,
      ),
      DataResto(
        imgMenu:
            'https://d1sag4ddilekf6.cloudfront.net/compressed/items/6-CZAZR2LKA3LBFA-CZKEVGD2BAT2TT/photo/ca6410b825ca4ff09b30a84a798e5b91_1599825066450561786.jpg',
        nameMenu: 'Soklat Berry',
        descriptionMenu: 'Susu Segar, Coklat dan Berry',
        price: 28.000,
        priceDelivery: 13.000,
      ),
      DataResto(
        imgMenu:
            'https://d1sag4ddilekf6.cloudfront.net/compressed/items/6-CZAZR2LKA3LBFA-CZKEVGEADBJDJE/photo/8d55c5d394144675859c27614c664bb6_1599825068258732465.jpg',
        nameMenu: 'Susu Matcha',
        descriptionMenu: 'Susu Seger dan Teh Matcha',
        price: 25.000,
        priceDelivery: 13.000,
      ),
    ],
  ),
  DataResto(
    imgResto: 'asset/image/resto/phd.jpg',
    nameRestorant: "Pizza Hut",
    location: 'Jl. Kapas Kerampung, Tambak Sari',
    categoryResto: 'Pizza & Pasta',
    informationResto: ' restoran berantai dan waralaba franchise makanan',
    openDays: 'Senin-Minggu',
    openClock: '10:00-23:00',
    valueRange: 4.7,
    distance: 1.6,
    priceDelivery: 15.000,
    menu: [
      DataResto(
        imgMenu:
            'https://d1sag4ddilekf6.cloudfront.net/compressed/items/IDITE2019090121420118381/photo/0294320d6b7d42d1a59e3d372f30fb81_1581937037422440377.jpg',
        nameMenu: 'Regular Signature Pizza',
        price: 99.000,
        descriptionMenu: 'Andalan yang pas untuk momen seru kamu',
        priceDelivery: 15.000,
      ),
      DataResto(
        imgMenu:
            'https://d1sag4ddilekf6.cloudfront.net/compressed/items/IDITE2019090121420030291/photo/ec2c4c8c03d84f308562276f7e06757f_1581873011074803234.jpg',
        nameMenu: 'Jumbo Signature Pizza',
        descriptionMenu: 'Untuk Momen Rame-Rame kamu',
        price: 150.000,
        priceDelivery: 15.000,
      ),
      DataResto(
        imgMenu:
            'https://d1sag4ddilekf6.cloudfront.net/compressed/items/IDITE2019090121420364175/photo/aecc8cbd2fab4872be07d63ba74aa1e9_1581873011278323910.jpg',
        nameMenu: 'Splitza Regular',
        descriptionMenu: '2 Topping dalam 1 Pizza Regular',
        price: 101.000,
        priceDelivery: 15.000,
      ),
      DataResto(
        imgMenu:
            'https://d1sag4ddilekf6.cloudfront.net/compressed/items/IDITE20210406170007210197/photo/512df56985214afda65b9825a0d71681_1617728407422151457.jpg',
        nameMenu: 'Coca-Cola 1 Liter',
        price: 27.000,
        priceDelivery: 15.000,
      ),
      DataResto(
        imgMenu:
            'https://d1sag4ddilekf6.cloudfront.net/compressed/items/IDITE2019090121421205776/photo/ccb4dfbad7254a54ae7a0f145acae7da_1581873015708943699.jpg',
        nameMenu: 'Melon Lemonade',
        descriptionMenu: 'Melon Syrup, Lemonade Powder Jelly ',
        price: 18.000,
        priceDelivery: 15.000,
      ),
      DataResto(
        imgMenu:
            'https://d1sag4ddilekf6.cloudfront.net/compressed/items/IDITE2019090121421226900/photo/f31cc26a06334f6b98cbb60d43216f46_1581873016012467135.jpg',
        nameMenu: 'Orange Delight',
        descriptionMenu: 'Orange Juice Concentrate, Orange Syrup',
        price: 18.000,
        priceDelivery: 15.000,
      ),
    ],
  ),
  DataResto(
    imgResto: 'asset/image/resto/maryam Frozen food.jpg',
    nameRestorant: 'Maryam Frozen Food',
    location: 'JL Sidotopo, surabaya',
    categoryResto: 'Cemilan,Daging Sapi,Bakso',
    informationResto: 'Menjual bahan makanan, Cemilan,Daging Sapi,Bakso',
    openDays: 'Senin-Minggu',
    openClock: '06:00-22:00',
    valueRange: 4.8,
    distance: 0.5,
    priceDelivery: 5.000,
    menu: [
      DataResto(
        imgMenu:
            'https://d1sag4ddilekf6.cloudfront.net/compressed/items/IDITE2021031313460324020/photo/menueditor_item_d1706cf03c324d308f0475009afb34d7_1615643104356642563.jpg',
        nameMenu: 'Kebab Frozen Pahlawan',
        descriptionMenu:
            'Kebab Frozen Pahlawan isi full Daging, Saus Tomat dan Mayo, kulit krispy',
        price: 30.000,
        priceDelivery: 5.000,
      ),
      DataResto(
        imgMenu:
            'https://d1sag4ddilekf6.cloudfront.net/compressed/items/IDITE2021040707460517680/photo/menueditor_item_ed879a6b3f3243acb64935254def913d_1621407157138373468.jpg',
        nameMenu: 'Dimsum Ayam Udang',
        descriptionMenu:
            'Dimsum ayam Udang Isi 5. Untuk Toppig wortel, Jamur Kuping, Keju, Crabstick, dan Cabe. ',
        price: 13.000,
        priceDelivery: 5.000,
      ),
      DataResto(
        imgMenu:
            'https://d1sag4ddilekf6.cloudfront.net/compressed/items/IDITE20210312094656098395/photo/menueditor_item_3197210bada246828f90eef933cb7822_1615641006314430875.jpg',
        nameMenu: 'Pisang Coklat',
        descriptionMenu:
            'Isian Pisang Kepok, COklat Batang Dengan Kulit yang kripy',
        price: 12.000,
        priceDelivery: 5.000,
      ),
      DataResto(
        imgMenu:
            'https://d1sag4ddilekf6.cloudfront.net/compressed/items/IDITE2021052411125164493/photo/menueditor_item_96618d0cd577477b819cc645dd3fbcff_1621854729595256324.jpg',
        nameMenu: 'Goldstar Pok Pok ',
        price: 49.000,
        priceDelivery: 5.000,
      ),
      DataResto(
        imgMenu:
            'https://d1sag4ddilekf6.cloudfront.net/compressed/items/IDITE2021052411144605647/photo/menueditor_item_cdf39949f3a94763bbcddf7f4f6e4871_1621854859647818386.jpg',
        nameMenu: 'Goldstar Katsu',
        price: 42.000,
        priceDelivery: 5.000,
      ),
      DataResto(
        imgMenu:
            'https://d1sag4ddilekf6.cloudfront.net/compressed/items/IDITE2021052411113179745/photo/menueditor_item_6ffc9f065d804738827d13402161d1ef_1621854659555077023.jpg',
        nameMenu: 'Goldstar Nugget Original',
        price: 44.000,
        priceDelivery: 5.000,
      ),
    ],
  ),
  DataResto(
    imgResto: 'asset/image/resto/suprek.jpg',
    nameRestorant: 'Ayam Geprek Mr Suprek',
    location: 'Jl. Kenjeran gading, Surabaya',
    categoryResto: 'Aneka Ayam',
    informationResto: 'Restoran menyediakan Aneka Ayam',
    openDays: 'Senin-Minggu',
    openClock: '09:00-22:00',
    valueRange: 4.7,
    distance: 3.0,
    priceDelivery: 11.000,
    menu: [
      DataResto(
        imgMenu:
            'https://d1sag4ddilekf6.cloudfront.net/compressed/items/IDITE2020101506524632502/photo/menueditor_item_25678f1a808d45478bf508c2fbf99ada_1602744763749529991.jpg',
        nameMenu: 'Nasgoprek',
        descriptionMenu:
            'Nasi Goreng Jumbo + Telor Suwir + Ayam Geprek Sambal Bawang',
        price: 28.000,
        priceDelivery: 11.000,
      ),
      DataResto(
        imgMenu:
            'https://d1sag4ddilekf6.cloudfront.net/compressed/items/AWjgM0YoZXYdMpch2tEw/photo/9df9f40fa21747de98fd9fdd3be574c7_1583841306381765594.jpg',
        nameMenu: 'Ayan Geprek Matah',
        descriptionMenu: 'Ayam Geprek Matah + Nas',
        price: 25.000,
        priceDelivery: 11.000,
      ),
      DataResto(
        imgMenu:
            'https://d1sag4ddilekf6.cloudfront.net/compressed/items/AWjgM0V0ZXYdMpch2tEv/photo/3fcf52a6568e4cd78d7228b139298481_1583841306543621585.jpg',
        nameMenu: 'Ayam Geprek Mozarela Telor',
        descriptionMenu: 'Ayam Geprek + Mozarela + Telor',
        price: 25.000,
        priceDelivery: 11.000,
      ),
      DataResto(
        imgMenu:
            'https://d1sag4ddilekf6.cloudfront.net/compressed/items/IDGFSTI00000hwf-CYLJCNNZNUJZET/photo/menueditor_item_007f7a256ac3410fa9727a89bded6c01_1590604717398617049.jpg',
        nameMenu: 'Ayam Geprek Telor Asin',
        descriptionMenu: 'Ayam Geprek + Telor + Nasi',
        price: 26.000,
        priceDelivery: 11.000,
      ),
      DataResto(
        imgMenu:
            'https://d1sag4ddilekf6.cloudfront.net/compressed/items/IDITE2020052719100668432/photo/d60d9ac1a4204f1597337b6ebfd4a020_1619234855376309951.jpg',
        nameMenu: 'Tahu Telur Kemul',
        descriptionMenu: 'Nasi + Tahu + Telor',
        price: 15.000,
        priceDelivery: 11.000,
      ),
      DataResto(
        imgMenu:
            'https://d1sag4ddilekf6.cloudfront.net/compressed/items/AWjgM0aF2bMmVZfr_iTo/photo/d371afe2a71744e992bb444a2cd2bf31_1619234855915910005.jpg',
        nameMenu: 'Ayam Geprek Cheddar',
        descriptionMenu: 'Nasi + Ayam Geprek + Keju cheddar',
        price: 23.000,
        priceDelivery: 11.000,
      ),
    ],
  ),
  DataResto(
    imgResto: 'asset/image/resto/starbuck.jpeg',
    nameRestorant: 'Starbucks',
    location: 'Ground Floor Grand City Surabaya, Jl. Walikota Mustajab',
    categoryResto: 'Kopi, Roti & Kue, beverages',
    informationResto:
        'Kedai Kopi yang menyajikan kopi, minuman panas berbasis espresso, minuman dingin dan panas lainnya, makanan ringan, serta cangkir dan bijih kopi.',
    openDays: 'Senin-Minggu',
    openClock: '09:00-21:00',
    valueRange: 4.9,
    distance: 3.3,
    priceDelivery: 5.000,
    menu: [
      DataResto(
        imgMenu:
            'https://d1sag4ddilekf6.cloudfront.net/compressed/items/6-CY4DJVCCJP5AAX-C2D2SCJZKFVGAX/photo/1fb7cf7519d74da78083044e56beaee1_1622481022267909649.jpg',
        nameMenu: 'Classic Caramel Macchiato',
        descriptionMenu: 'Dapatkan Minuman 1L dengan Harga Spesial',
        price: 100.000,
        priceDelivery: 5.000,
      ),
      DataResto(
        imgMenu:
            'https://d1sag4ddilekf6.cloudfront.net/compressed/items/IDITE20210412171120172771/photo/a278943e5fb14cd08f1c7ff09752c46e_1618419800723425333.jpg',
        nameMenu: 'Emerald Green Tea latte',
        descriptionMenu: 'Dapatkan Minuman 1L dengan Harga Spesial',
        price: 100.000,
        priceDelivery: 5.000,
      ),
      DataResto(
        imgMenu:
            'https://d1sag4ddilekf6.cloudfront.net/compressed/items/IDITE20210412171121025477/photo/4514361ebe5645a2b1aa2246221026c5_1618419801176808396.jpg',
        nameMenu: 'Creamy Vanilla Latte',
        descriptionMenu: 'Dapatkan Minuman 1L dengan Harga Spesial',
        price: 100.000,
        priceDelivery: 5.000,
      ),
      DataResto(
        imgMenu:
            'https://d1sag4ddilekf6.cloudfront.net/compressed/items/6-CY4DJVCCJP5AAX-CZMERTMHUGBFNN/photo/4df8eaf04b824043846f0485848578b4_1596474167953285157.jpg',
        nameMenu: 'Classic Tuna Tostie ',
        descriptionMenu: 'Nikmati roti khas kami',
        price: 68.000,
        priceDelivery: 5.000,
      ),
      DataResto(
        imgMenu:
            'https://d1sag4ddilekf6.cloudfront.net/compressed/items/IDITE20210501090028368072/photo/ca7efe2022f14703a985c36aa0234eeb_1619975584163454626.jpg',
        nameMenu: 'Spicy Tuna Cheese + Caramel Macchiato',
        descriptionMenu: 'Spicy Tuna Cheese Baguette + Caramel Macchiato',
        price: 38.000,
        priceDelivery: 5.000,
      ),
      DataResto(
        imgMenu:
            'https://d1sag4ddilekf6.cloudfront.net/compressed/items/IDITE20210501090028416445/photo/1e6ed7fe9fa64be0a4c3cdee1596e7e5_1619975584455797302.jpg',
        nameMenu: 'Summer Almond Peach Puff + Carammel Macchiato',
        descriptionMenu: 'Summer Almond Peach Puff + Carammel Macchiato',
        price: 65.000,
        priceDelivery: 5.000,
      ),
    ],
  ),
];
