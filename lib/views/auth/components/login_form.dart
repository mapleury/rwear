import 'package:flutter/material.dart';
import 'package:my_app/utils/app_colors.dart';

class LoginForm extends StatelessWidget {
  final TextEditingController usernameController;
  final TextEditingController passwordController;
  final bool obscurePassword;
  final VoidCallback togglePassword;

  LoginForm({
    required this.usernameController,
    required this.passwordController,
    required this.obscurePassword,
    required this.togglePassword,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Username
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: AppColors.darkDetailBg.withOpacity(0.01),
                blurRadius: 8,
                offset: Offset(0, 4),
              ),
            ],
          ),
          child: TextFormField(
            controller: usernameController,
            decoration: InputDecoration(
              hintText: "Email or Username",
              hintStyle: TextStyle(color: AppColors.lightIcon),
              border: InputBorder.none,
              contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            ),
            validator: (value) {
              if (value == null || value.trim().isEmpty) {
                return "Please enter your username or email";
              }
              return null;
            },
          ),
        ),

        SizedBox(height: 16),

        // Password
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: AppColors.darkDetailBg.withOpacity(0.01),
                blurRadius: 8,
                offset: Offset(0, 4),
              ),
            ],
          ),
          child: TextFormField(
            controller: passwordController,
            obscureText: obscurePassword,
            decoration: InputDecoration(
              hintText: "Password",
              hintStyle: TextStyle(color: AppColors.lightIcon),
              border: InputBorder.none,
              contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              suffixIcon: IconButton(
                icon: Icon(
                  obscurePassword ? Icons.visibility_off : Icons.visibility,
                  color: AppColors.darkDetailBg,
                ),
                onPressed: togglePassword,
              ),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Please enter your password";
              }
              return null;
            },
          ),
        ),
      ],
    );
  }
}
