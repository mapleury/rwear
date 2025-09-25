import 'package:flutter/material.dart';
import 'package:my_app/utils/app_colors.dart';
import 'package:provider/provider.dart';

class Header extends StatelessWidget {
   const Header({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Rwear",
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w900,
                color: colors.titleText,
              ),
            ),
            Row(
              children: [
              _circleIcon(Icons.search, colors, context),
 SizedBox(width: 12),
_circleIcon(Icons.shopping_cart_outlined, colors, context),

              ],
            ),
          ],
        ),
         SizedBox(height: 20),

        SizedBox(
          height: 40,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              _categoryChip("All", true, colors),
              _categoryChip("Streetwear", false, colors),
              _categoryChip("Jackets", false, colors),
              _categoryChip("Pants", false, colors),
              _categoryChip("Shoes", false, colors),
            ],
          ),
        ),
      ],
    );
  }
Widget _circleIcon(IconData icon, dynamic colors, BuildContext context) {
  return IconButton(
    icon: Icon(icon, size: 20, color: colors.titleText),
    onPressed: () {
      if (icon == Icons.shopping_cart_outlined) {
        Navigator.pushNamed(context, '/cart');
      }
    },
    style: IconButton.styleFrom(
      backgroundColor: colors.cardBg,
      padding:  EdgeInsets.all(10),
    ),
  );
}

  }

  Widget _categoryChip(String text, bool isSelected, dynamic colors) {
    return Container(
      margin:  EdgeInsets.only(right: 12),
      padding:  EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: isSelected ? colors.icon : colors.cardBg,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w600,
          color: isSelected ? Colors.white : colors.titleText,
        ),
      ),
    );
  }

