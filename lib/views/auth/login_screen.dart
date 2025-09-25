import 'package:flutter/material.dart';
import 'package:my_app/views/auth/components/login_fields.dart';
import 'package:my_app/views/auth/components/login_footer.dart';
import '../../utils/app_colors.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  bool _obscurePassword = true;
  
void _submit() {
  if (_formKey.currentState!.validate()) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text("Logging in...")),
    );

    Future.delayed(const Duration(milliseconds: 300), () {
      Navigator.pushReplacementNamed(context, '/home');
    });
  } else {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text("Please input all the fields correctly!")),
    );
  }
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.authBg,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 32),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 130),
                Text(
                  "Hello again!",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w900,
                    color: AppColors.lightTitleText,
                  ),
                ),
                SizedBox(height: 6),
                Text(
                  "Sign in to start your thrifting experience.",
                  style: TextStyle(fontSize: 15, color: AppColors.lightIcon),
                ),
                SizedBox(height: 36),
                LoginFields(
                  obscurePassword: _obscurePassword,
                  togglePassword: () {
                    setState(() {
                      _obscurePassword = !_obscurePassword;
                    });
                  },
                ),
                SizedBox(height: 24),
                LoginFooter(onSubmit: _submit),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
