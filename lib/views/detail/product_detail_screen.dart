import 'package:flutter/material.dart';
import 'package:my_app/models/products_model.dart';
import 'package:my_app/utils/app_colors.dart';
import 'package:my_app/utils/theme_notifier.dart';
import 'package:provider/provider.dart';

class ProductDetailScreen extends StatelessWidget {
  final ProductsModel product;
  final dynamic colors;

  const ProductDetailScreen({
    super.key,
    required this.product,
    required this.colors,
  });

  @override
  Widget build(BuildContext context) {
    final themeNotifier = context.watch<ThemeNotifier>();
    final colors = context.colors;

    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        backgroundColor: colors.cardBg,
        elevation: 0,
        actionsPadding: const EdgeInsets.only(right: 10, top: 2),

        leading: Padding(
          padding: const EdgeInsets.only(left: 16, top: 8),
          child: IconButton(
            icon: Icon(Icons.close, color: colors.icon),
            onPressed: () => Navigator.pop(context),
          ),
        ),

        actions: [
          IconButton(
            onPressed: () {},
            icon: Image.asset(
              'assets/icons/share_icon.png',
              height: 60,
              width: 60, 
            ),
          ),
        ],
      ),
      body: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Image.asset(
              'assets/images/detail_bg.png',
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Hero(
                  tag: product.image,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(product.image, height: 280, width: 400),
                  ),
                ),
                const SizedBox(height: 20),

                // Title
                Text(
                  product.name.replaceAll('\n', ''),
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: colors.titleText,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  softWrap: false,
                ),

                const SizedBox(height: 4),
                Text(
                  product.brand,
                  style: Theme.of(
                    context,
                  ).textTheme.bodySmall?.copyWith(fontSize: 14),
                ),

                Image.asset(
                  'assets/images/detail_product.png',
                  height: 100,
                  width: 240,
                ),

                const SizedBox(height: 24),

                // miss maaf kodenya masih kurang oke dalam penataan layoutnya
                // nanti akan saya perbaiki lagi di commit berikutnya
               
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //   children: [
                //     Text(
                //       "Product Details",
                //       style: TextStyle(
                //         fontSize: 16,
                //         fontWeight: FontWeight.bold,
                //         color: colors.titleText,
                //       ),
                //     ),
                //     Container(
                //       padding: const EdgeInsets.symmetric(
                //         vertical: 6,
                //         horizontal: 14,
                //       ),
                //       decoration: BoxDecoration(
                //         color: colors.cardBg,
                //         borderRadius: BorderRadius.circular(20),
                //       ),
                //       child: Text(
                //         "\$${product.price}",
                //         style: TextStyle(
                //           fontSize: 15,
                //           fontWeight: FontWeight.bold,
                //           color: colors.titleText,
                //         ),
                //       ),
                //     ),
                //   ],
                // ),
                // const SizedBox(height: 12),
                // Text(
                //   "A vintage indigo windbreaker with light wear, lightweight nylon build, and a timeless cut"
                //   "perfect for casual layering with thrifted charm.",
                //   style: Theme.of(
                //     context,
                //   ).textTheme.bodySmall?.copyWith(fontSize: 14),
                // ),
                // const SizedBox(height: 24),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
