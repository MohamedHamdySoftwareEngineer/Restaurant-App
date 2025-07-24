import 'package:cloud_firestore/cloud_firestore.dart';

class FoodItem {
  final String name;
  final double price;
  final String image;

  FoodItem({required this.name, required this.price, required this.image});

  factory FoodItem.fromFirestore(DocumentSnapshot document) {
    final data = document.data() as Map<String, dynamic>;
    return FoodItem(
      name: data['name'] ?? '',
      price: (data['price'] as num).toDouble(),
      image: data['image'] ?? '',
    );
  }
}
