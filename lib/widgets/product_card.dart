import 'package:flutter/material.dart';
import '../models/product_model.dart';

class ProductCard extends StatelessWidget {
  final ProductModel data;
  final VoidCallback onTap;
  final VoidCallback onDetailTap;

  const ProductCard({
    super.key,
    required this.data,
    required this.onTap,
    required this.onDetailTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(14),
        decoration: BoxDecoration(
          color: const Color(0xFFFDF2FA),
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: const Color(0xFFE6D7F8)),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.03),
              blurRadius: 8,
              offset: const Offset(0, 3),
            )
          ],
        ),
        child: Column(
          children: [
            Expanded(
              child: Image.asset(
                data.image,
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              data.name,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                color: Color(0xFF4A266A),
              ),
            ),
            const SizedBox(height: 4),
            Text(
              data.price,
              style: const TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
            ),
            const SizedBox(height: 12),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: onDetailTap,
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF6A42A3),
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: const Text("Detail"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
