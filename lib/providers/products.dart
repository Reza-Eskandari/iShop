import 'package:flutter/material.dart';
import './product.dart';

class Products with ChangeNotifier {
  List<Product> _items = [
    Product(
      id: 'p1',
      title: 'ASPIRE LONG SLEEVE',
      description:
          'We created the Aspire Range as a suite of tops designed to go the distance. Here you’ll find our stretchiest blend of fabrics yet, with plenty of bounce and a soft, brushed handfeel. Full-length sleeves will keep you warm, and subtle Alphalete branding across the chest adds a clean finish.',
      price: 39.99,
      imageUrl:
          'https://cdn.shopify.com/s/files/1/0667/0133/products/BlackFriTops-191_720x.jpg?v=1574764391',
    ),
    Product(
      id: 'p2',
      title: 'STRIPE HOODIE',
      description:
          'This season’s staple. Our Stripe Hoodie includes eye-catching features like a dropped shoulder effect and dual contrasting stripes to offer varsity flair and a laidback look. And thanks to Alphalete-inspired details like our color-matched drawstrings, custom matte caps, iconic 3D Script Logo, and famous double-brushed interior fleece, the Stripe Hoodie is everything you need to complete your autumn outfit. This one’s guaranteed to be your new favorite. Wear it once and you’ll see — and feel — why.',
      price: 49.99,
      imageUrl:
          'https://cdn.shopify.com/s/files/1/0667/0133/products/SepWebsite-121_720x.jpg?v=1568993016',
    ),
    Product(
      id: 'p3',
      title: 'STRIPE HOODIE',
      description:
          'This season’s staple. Our Stripe Hoodie includes eye-catching features like a dropped shoulder effect and dual contrasting stripes to offer varsity flair and a laidback look. And thanks to Alphalete-inspired details like our color-matched drawstrings, custom matte caps, iconic 3D Script Logo, and famous double-brushed interior fleece, the Stripe Hoodie is everything you need to complete your autumn outfit. This one’s guaranteed to be your new favorite. Wear it once and you’ll see — and feel — why.',
      price: 49.99,
      imageUrl:
          'https://cdn.shopify.com/s/files/1/0667/0133/products/SepWebsite-116_720x.jpg?v=1568993046',
    ),
    Product(
      id: 'p4',
      title: 'SCOOP NECK',
      description:
          'An essential part of every casual wardrobe, and the flagship of our Lifestyle Range. The Scoop Neck Shirt returns with improvements in fit and finish all around. We’ve lowered the sleeves just a touch and loosened up the trunk (versus the fit of our previous Pocket Scoop Neck) for a little more room and increased comfort. Everything you love about this top remains the same, though — back paneling emphasizes your lats, while the slightly tapered and lengthened design flatter your physique. Our Script Logo is featured on our black Authenticity Tag for a stylish finish.',
      price: 29.99,
      imageUrl:
          'https://cdn.shopify.com/s/files/1/0667/0133/products/925A5888_720x.jpg?v=1556037003',
    ),
  ];

  List<Product> get items {
    return [..._items];
  }

  List<Product> get favItems {
    return items.where((prodItem) => prodItem.isFavorite).toList();
  }

  Product findById(String id) {
    return items.firstWhere((prod) => prod.id == id);
  }
}
