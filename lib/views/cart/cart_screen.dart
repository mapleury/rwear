import 'package:flutter/material.dart';
import 'package:my_app/models/products_model.dart';
import 'package:my_app/utils/app_colors.dart';
import 'package:my_app/utils/theme_notifier.dart';
import 'package:my_app/views/cart/components/cart_item.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key, required this.products});
  final List<ProductsModel> products;

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;

    return Scaffold(
      backgroundColor: colors.containerBg,
      appBar: AppBar(
        actionsPadding: EdgeInsets.only(left: 20),
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: colors.titleText),
          onPressed: () {
            Navigator.pushNamed(context, '/home');
          },
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 28, vertical: 16),
        child: Column(
          children: [
            SizedBox(height: 20),

            // Title
            Row(
              children: [
                Text(
                  "Cart",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 32,
                    color: colors.titleText,
                  ),
                ),
                SizedBox(width: 6),
                Text(
                  "2",
                  style: TextStyle(fontSize: 20, color: colors.secondaryText),
                ),
              ],
            ),
            SizedBox(height: 20),

            // Cart items
            CartItem(product: products[0]),
            SizedBox(height: 12),
            CartItem(product: products[1]),

            Spacer(),

            // Total price
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Total: ",
                  style: TextStyle(fontSize: 16, color: colors.secondaryText),
                ),
                Text(
                  "\$${products[0].price + products[1].price}",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: colors.titleText,
                  ),
                ),
              ],
            ),
            SizedBox(height: 14),

            // Purchase button
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  padding: EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40),
                  ),
                ),
                child: Text(
                  "Purchase",
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
