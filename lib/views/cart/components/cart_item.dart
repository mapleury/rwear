import 'package:flutter/material.dart';
import 'package:my_app/models/products_model.dart';
import 'package:my_app/utils/app_colors.dart';
import 'package:my_app/utils/theme_notifier.dart';

class CartItem extends StatelessWidget {
  final ProductsModel product;

  const CartItem({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;

    return Container(
      decoration: BoxDecoration(
        color: colors.cardBg,
        borderRadius: BorderRadius.circular(16),
      ),
      padding: EdgeInsets.all(14),
      child: Row(
        children: [
          // Image
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              product.image,
              height: 80,
              width: 80,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: 14),

          // Info
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product.name.replaceAll('\n', ''),
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: colors.titleText,
                  ),
                ),
                Text(
                  product.brand,
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                    color: colors.titleText,
                  ),
                ),
                SizedBox(height: 6),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    "\$${product.price}",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          ),

          Column(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.remove_red_eye_outlined,
                  color: colors.icon,
                  size: 22,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.close, color: colors.icon, size: 22),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
