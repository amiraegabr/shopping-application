import 'package:flutter/material.dart';

class Product {
  String image, title, category, description;
  var price;
  double rating;
  bool isFavorite;

  Product(
      {required this.image,
        required this.title,
        required this.description,
        required this.price,
        required this.rating,
        required this.category,
        required this.isFavorite});
}

List cartproducts = [] ;
List favoriteproducts = [] ;

List<Product> product = [
  Product(
    image:
    "https://img.ltwebstatic.com/images3_pi/2019/10/18/1571390170afeeb9a0cdc129f2e9093d148da5382b_thumbnail_900x.webp",
    title: "Long Sleeve Sweater",
    description: 'This is some product description',
    price: 220,
    rating: 5,
    category: 'Tops',
    isFavorite: false,
  ),
  Product(
    image:
    "https://img.ltwebstatic.com/images3_pi/2022/02/25/164577294365e7987b84426f04e32fb3296ca7dbaa_thumbnail_900x.webp",
    title: "Lace-Up Front Skate Shoes",
    description: 'This is some product description',
    price: 525,
    rating: 5,
    category: 'Shoes',
    isFavorite: false,
  ),
  Product(
    image:
    "https://img.ltwebstatic.com/images3_pi/2022/06/27/16562951630a02758d663b9dd514ecba61f2761f67_thumbnail_900x.webp",
    title: "Solid Track Shorts",
    description: 'This is some product description',
    price: 160,
    rating: 5,
    category: 'Bottoms',
    isFavorite: false,
  ),
  Product(
    image:
    "https://img.ltwebstatic.com/images3_pi/2021/10/26/163522614973b88098ed67c34e364cea2690f995c1_thumbnail_900x.webp",
    title: "Black Quartz watch",
    description: 'This is some product description',
    price: 115,
    rating: 5,
    category: 'Watches',
    isFavorite: false,
  ),
  Product(
    image:
    "https://img.ltwebstatic.com/images3_pi/2021/04/01/1617244817397c3c0c02059c390b7b095cc89e6a28_thumbnail_900x.webp",
    title: "Polka dot Cami Dress",
    description: 'This is some product description',
    price: 185,
    rating: 5,
    category: 'Dresses',
    isFavorite: false,
  ),
  Product(
    image:
    "https://img.ltwebstatic.com/images3_pi/2022/05/18/1652837706b0b10094fac05d89ce6eefc0956c62dc_thumbnail_900x.webp",
    title: "Japanese letter and wave print tee",
    description: 'This is some product description',
    price: 140,
    rating: 5,
    category: 'Tops',
    isFavorite: false,
  ),
  Product(
    image:
    "https://img.ltwebstatic.com/images3_pi/2021/09/15/16316750097bd72ad03080430d97cba0e456bedeb5_thumbnail_900x.webp",
    title: "Colorblock Lace-up Front Skate Shoes",
    description: 'This is some product description',
    price: 435,
    rating: 5,
    category: 'Shoes',
    isFavorite: false,
  ),
  Product(
    image:
    "https://img.ltwebstatic.com/images3_pi/2020/09/24/16009364778a3931856d13fdec62d0e3ec84e909b9_thumbnail_900x.webp",
    title: "Minimalist Lace-up Front Combat Boots",
    description: 'This is some product description',
    price: 465,
    rating: 5,
    category: 'Shoes',
    isFavorite: false,
  ),
  Product(
    image:
    "https://img.ltwebstatic.com/images3_pi/2021/08/09/16284760191082dd98ffc5dffd409253921fb2965a_thumbnail_900x.webp",
    title: "Fold Pleated Pants",
    description: 'This is some product description',
    price: 460,
    rating: 5,
    category: 'Bottoms',
    isFavorite: false,
  ),
  Product(
    image:
    "https://img.ltwebstatic.com/images3_pi/2021/02/25/1614228329a32479c3913951f467ce0d6b4d5e542c_thumbnail_900x.webp",
    title: "Pearl Beading Crop Tee",
    description: 'This is some product description',
    price: 99.8,
    rating: 5,
    category: 'Tops',
    isFavorite: false,
  ),
  Product(
    image:
    "https://img.ltwebstatic.com/images3_pi/2022/07/18/16581265348730585f58ba0453b2f02d5c2926863e_thumbnail_900x.webp",
    title: "Striped button Shirt",
    description: 'This is some product description',
    price: 260,
    rating: 5,
    category: 'Tops',
    isFavorite: false,
  ),
  Product(
    image:
    "https://img.ltwebstatic.com/images3_pi/2022/07/18/16581265348730585f58ba0453b2f02d5c2926863e_thumbnail_900x.webp",
    title: "Cartoon Graphic Shorts",
    description: 'This is some product description',
    price: 180,
    rating: 5,
    category: 'Bottoms',
    isFavorite: false,
  ),
  Product(
    image:
    "https://img.ltwebstatic.com/images3_pi/2019/10/18/1571390170afeeb9a0cdc129f2e9093d148da5382b_thumbnail_900x.webp",
    title: "Criss Cross Slingback Sandals",
    description: 'This is some product description',
    price: 300,
    rating: 5,
    category: 'Shoes',
    isFavorite: false,
  ),
  Product(
    image:
    "https://img.ltwebstatic.com/images3_pi/2022/06/16/1655377455bef32333705b5e0e09423d71a06f7606_thumbnail_900x.webp",
    title: "High Top Lace-up Front Canvas Shoes",
    description: 'This is some product description',
    price: 485,
    rating: 5,
    category: 'Shoes',
    isFavorite: false,
  ),
  Product(
    image:
    "https://img.ltwebstatic.com/images3_pi/2022/04/07/1649310079b213bbf4a61a9234af94535d641d7ec8_thumbnail_900x.webp",
    title: "Round Pointer Quartz Watch",
    description: 'This is some product description',
    price: 100,
    rating: 5,
    category: 'Watches',
    isFavorite: false,
  ),
  Product(
    image:
    "https://img.ltwebstatic.com/images3_pi/2022/04/05/16491642873e7896edf2fe0a1aece3c2d7c5d4b55e_thumbnail_900x.webp",
    title: "Butterfly Dial Quartz Watch",
    description: 'This is some product description',
    price: 70,
    rating: 5,
    category: 'Watches',
    isFavorite: false,
  ),
  Product(
    image:
    "https://img.ltwebstatic.com/images3_pi/2022/04/13/1649815695204db07dafd2f389bb4d1a32dbc43ad6_thumbnail_900x.webp",
    title: " Belted Wide Leg Pants",
    description: 'This is some product description',
    price: 260,
    rating: 5,
    category: 'Bottoms',
    isFavorite: false,
  ),
  Product(
    image:
    "https://img.ltwebstatic.com/images3_pi/2021/07/20/16267827932c499e9468e18616fec3c73b8cbba19f_thumbnail_900x.webp",
    title: "Pleated Mini Skirt",
    description: 'This is some product description',
    price: 160,
    rating: 5,
    category: 'Bottoms',
    isFavorite: false,
  ),
  Product(
    image:
    "https://img.ltwebstatic.com/images3_pi/2022/03/21/1647833414119643d6c94f9aba81121f89478a9c66_thumbnail_900x.webp",
    title: "Floral Print Cami Dress",
    description: 'This is some product description',
    price: 160,
    rating: 5,
    category: 'Dresses',
    isFavorite: false,
  ),
  Product(
    image:
    "https://img.ltwebstatic.com/images3_pi/2019/10/18/1571390170afeeb9a0cdc129f2e9093d148da5382b_thumbnail_900x.webp",
    title: " Lantern Sleeve Marled Sweater",
    description: 'This is some product description',
    price: 160,
    rating: 5,
    category: 'Tops',
    isFavorite: false,
  ),
  Product(
    image:
    "https://img.ltwebstatic.com/images3_pi/2021/10/18/16345441573f426e9172d9c25c48f67782a53e9a66_thumbnail_900x.webp",
    title: "Planet Print Tee",
    description: 'This is some product description',
    price: 159.8,
    rating: 5,
    category: 'Tops',
    isFavorite: false,
  ),
];
