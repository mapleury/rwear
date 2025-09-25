import 'package:flutter/material.dart';


class BottomNavDemo extends StatefulWidget {
  const BottomNavDemo({super.key});

  @override
  State<BottomNavDemo> createState() => _BottomNavDemoState();
}

class _BottomNavDemoState extends State<BottomNavDemo> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: Center(
        child: Text(
          "Page ${_selectedIndex + 1}",
          style:  TextStyle(color: Colors.white, fontSize: 24),
        ),
      ),
      bottomNavigationBar: Padding(
        padding:  EdgeInsets.all(16.0),
        child: Container(
          padding:  EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(50),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildNavItem(Icons.store, "Shop", 0, isText: true),
              _buildNavItem(Icons.favorite, null, 1),
              _buildNavItem(Icons.settings, null, 2),
              _buildNavItem(Icons.person, null, 3),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildNavItem(IconData icon, String? label, int index, {bool isText = false}) {
    final bool isActive = _selectedIndex == index;

    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedIndex = index;
        });
      },
      child: AnimatedContainer(
        duration:  Duration(milliseconds: 300),
        padding: isText
            ?  EdgeInsets.symmetric(horizontal: 20, vertical: 12)
            :  EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: isActive ? Colors.black : Colors.grey[700],
          borderRadius: BorderRadius.circular(50),
        ),
        child: isText
            ? Text(
                label!,
                style:  TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              )
            : Icon(
                icon,
                color: Colors.white,
              ),
      ),
    );
  }
}
