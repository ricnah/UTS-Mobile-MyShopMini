import 'package:flutter/material.dart';
import '../models/category_model.dart';
import '../widgets/category_card.dart';
import 'product_list_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const List<CategoryModel> categories = <CategoryModel>[
    CategoryModel(name: 'Makanan', icon: Icons.fastfood),
    CategoryModel(name: 'Minuman', icon: Icons.local_drink),
    CategoryModel(name: 'Elektronik', icon: Icons.devices),
    CategoryModel(name: 'Fashion', icon: Icons.checkroom),
    CategoryModel(name: 'Kecantikan', icon: Icons.brush),
    CategoryModel(name: 'Gaming', icon: Icons.sports_esports),
    CategoryModel(name: 'Otomotif', icon: Icons.directions_car),
    CategoryModel(name: 'Dapur', icon: Icons.kitchen),
    CategoryModel(name: 'Olahraga', icon: Icons.sports_basketball),
    CategoryModel(name: 'Furniture', icon: Icons.chair),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFF9F5FF),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          title: const Text(
            'MyShop Mini',
            style: TextStyle(
              color: Color(0xFF6A42A3),
              fontSize: 22,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          child: GridView.builder(
            itemCount: categories.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 14,
              crossAxisSpacing: 14,
              childAspectRatio: 1.05,
            ),
            itemBuilder: (context, index) {
              final cat = categories[index];
              return CategoryCard(
                data: cat,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => ProductListScreen(categoryName: cat.name),
                    ),
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
