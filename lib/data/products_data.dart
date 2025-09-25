import 'package:flutter/material.dart';
import 'package:my_app/models/products_model.dart';

final List<ProductsModel> products = [
  ProductsModel(
    id: 1,
    name: "Adidas \nAzure Sweater",
    price: 70,
    brand: "By Adidas",
    details:
        "The Adidas Azure Sweater blends comfort and style with its soft cotton blend. Its rich azure blue color adds a sleek, modern touch to casual or sporty outfits. Lightweight and versatile, it’s perfect for layering in cool weather.",
    image: "assets/images/products/products1.png",
  ),
  ProductsModel(
    id: 2,
    name: "Mercedes \nLeather Jacket",
    price: 120,
    brand: "By Compresser",
    details:
        "Crafted from premium leather, the Mercedes Jacket delivers luxury and durability. Its tailored fit and sleek design reflect sophistication and confidence. Comfortable and bold, it’s ideal for evening wear or stylish urban looks.",
    image: "assets/images/products/products2.png",
  ),
  ProductsModel(
    id: 3,
    name: "Nike \nSweatpants",
    price: 40,
    brand: "By Nike",
    details:
        "Nike Sweatpants offer everyday comfort with soft fleece fabric and a relaxed fit. The adjustable waistband ensures flexibility for lounging or workouts. Minimalist and versatile, they pair easily with any casual outfit.",
    image: "assets/images/products/products3.png",
  ),
  ProductsModel(
    id: 4,
    name: "Asics Memory \nFoam Shoes",
    price: 80,
    brand: "By Asics",
    details:
        "Asics Memory Foam Shoes adapt to your feet with cushioned support. The breathable mesh keeps you cool while durable soles provide stability. Perfect for long wear, they balance comfort and performance.",
    image: "assets/images/products/products4.png",
  ),
  ProductsModel(
    id: 5,
    name: "Peregrin \nWindbreaker",
    price: 90,
    brand: "By Typo Coorty",
    details:
        "The Peregrin Windbreaker is lightweight, water-resistant, and easy to pack. Elastic cuffs and toggles protect against wind while allowing free movement. Sleek and reliable, it’s great for outdoor runs or daily wear.",
    image: "assets/images/products/products5.png",
  ),
];
