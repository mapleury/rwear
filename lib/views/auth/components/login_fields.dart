import 'package:flutter/material.dart';
import '../../../utils/app_colors.dart';
import '../../../utils/validators.dart';

class LoginFields extends StatelessWidget {
  final bool obscurePassword;
  final VoidCallback togglePassword;
  const LoginFields({
    required this.obscurePassword,
    required this.togglePassword,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FormField<String>(
          validator: Validators.validateEmail,
          builder: (state) => Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.darkDetailBg.withOpacity(0.05),
                      blurRadius: 8,
                      offset: Offset(0, 4),
                    ),
                  ],
                ),
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hintText: "Email",
                    hintStyle: TextStyle(color: AppColors.lightIcon),
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 16,
                    ),
                  ),
                  onChanged: (value) => state.didChange(value),
                ),
              ),
              if (state.errorText != null) ...[
                SizedBox(height: 4),
                Text(
                  state.errorText!,
                  style: TextStyle(color: Colors.red, fontSize: 12),
                ),
              ],
            ],
          ),
        ),
        SizedBox(height: 16),

        FormField<String>(
          validator: Validators.validatePassword,
          builder: (state) => Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.darkDetailBg.withOpacity(0.05),
                      blurRadius: 8,
                      offset: Offset(0, 4),
                    ),
                  ],
                ),
                child: TextFormField(
                  obscureText: obscurePassword,
                  decoration: InputDecoration(
                    hintText: "Password",
                    hintStyle: TextStyle(color: AppColors.lightIcon),
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 16,
                    ),
                    suffixIcon: IconButton(
                      icon: Icon(
                        obscurePassword
                            ? Icons.visibility_off
                            : Icons.visibility,
                        color: AppColors.lightIcon,
                      ),
                      onPressed: togglePassword,
                    ),
                  ),
                  onChanged: (value) => state.didChange(value),
                ),
              ),
              if (state.errorText != null) ...[
                SizedBox(height: 4),
                Text(
                  state.errorText!,
                  style: TextStyle(color: Colors.red, fontSize: 12),
                ),
              ],
            ],
          ),
        ),

        SizedBox(height: 8),

        Align(
          alignment: Alignment.centerRight,
          child: TextButton(
            onPressed: () {},
            child: Text(
              "Forgot Password?",
              style: TextStyle(color: AppColors.darkDetailBg),
            ),
          ),
        ),
      ],
    );
  }
}
