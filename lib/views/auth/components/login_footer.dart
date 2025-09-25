import 'package:flutter/material.dart';
import 'package:my_app/utils/app_colors.dart';

class LoginFooter extends StatelessWidget {
  final VoidCallback onSubmit;
  LoginFooter({required this.onSubmit});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(child: Divider(color: AppColors.lightIcon)),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                "or",
                style: TextStyle(color: AppColors.lightSecondaryGrey),
              ),
            ),
            Expanded(child: Divider(color: AppColors.lightIcon)),
          ],
        ),
        SizedBox(height: 16),
        Row(
          children: [
            Expanded(
              child: OutlinedButton.icon(
                onPressed: () {},
                icon: Image.asset("assets/icons/google.png", height: 16),
                label: Text(
                  "Google",
                  style: TextStyle(color: AppColors.lightSecondaryGrey),
                ),
                style: OutlinedButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 22),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32),
                  ),
                  side: BorderSide(color: AppColors.lightIcon),
                ),
              ),
            ),
            SizedBox(width: 5),
            Expanded(
              child: OutlinedButton.icon(
                onPressed: () {},
                icon: Image.asset("assets/icons/apple.png", height: 16),
                label: Text(
                  "Apple",
                  style: TextStyle(color: AppColors.lightSecondaryGrey),
                ),
                style: OutlinedButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 22),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32),
                  ),
                  side: BorderSide(color: AppColors.lightIcon),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 40),
        SizedBox(
          width: double.infinity,
          height: 50,
          child: ElevatedButton(
            onPressed: onSubmit,
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.lightButton,
              padding: EdgeInsets.symmetric(vertical: 18),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
            child: Text(
              "Sign In",
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ),
        ),
        SizedBox(height: 24),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Already have an account? ",
              style: TextStyle(color: AppColors.lightSecondaryGrey),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/signup');
              },
              style: TextButton.styleFrom(
                padding: EdgeInsets.zero, 
                minimumSize: Size(0, 0),
                tapTargetSize:
                    MaterialTapTargetSize.shrinkWrap, 
              ),
              child: Text(
                "Sign Up",
                style: TextStyle(
                  color: AppColors.darkDetailBg,
                  fontWeight: FontWeight.w500,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ],
        ),

        SizedBox(height: 24),
      ],
    );
  }
}
