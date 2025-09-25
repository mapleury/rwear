import 'package:flutter/material.dart';
import 'package:my_app/views/auth/components/signup_footer.dart';
import '../../utils/app_colors.dart';

class SignUpScreen extends StatefulWidget {
  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _formKey = GlobalKey<FormState>();
  bool _obscurePassword = true;
  bool _obscureConfirmPassword = true;

  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  void _submit() {
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text("Signing Up...")));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.authBg,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 28),
          child: Form(
            key: _formKey,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 120),
                  Text(
                    "Welcome!",
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w900,
                      color: AppColors.lightTitleText,
                    ),
                  ),
                  SizedBox(height: 6),
                  Text(
                    "Sign up to start your thrifting experience.",
                    style: TextStyle(fontSize: 15, color: AppColors.lightIcon),
                  ),
                  SizedBox(height: 36),

                  _buildField(controller: _usernameController, hint: "Username"),
                  SizedBox(height: 16),

                  _buildField(
                      controller: _emailController,
                      hint: "Email",
                      keyboardType: TextInputType.emailAddress),
                  SizedBox(height: 16),

                  _buildPasswordField(
                    controller: _passwordController,
                    hint: "Password",
                    obscureText: _obscurePassword,
                    togglePassword: () =>
                        setState(() => _obscurePassword = !_obscurePassword),
                  ),
                  SizedBox(height: 16),

                  _buildPasswordField(
                    controller: _confirmPasswordController,
                    hint: "Confirm Password",
                    obscureText: _obscureConfirmPassword,
                    togglePassword: () => setState(
                        () => _obscureConfirmPassword = !_obscureConfirmPassword),
                  ),
                  SizedBox(height: 32),

                  SignUpFooter(onSubmit: _submit),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildField({
    required TextEditingController controller,
    required String hint,
    TextInputType keyboardType = TextInputType.text,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: Colors.grey.withOpacity(0.2)),
      ),
      child: TextFormField(
        controller: controller,
        keyboardType: keyboardType,
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: TextStyle(color: AppColors.lightIcon, fontSize: 15),
          border: InputBorder.none,
          contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        ),
        style: TextStyle(fontSize: 16),
      ),
    );
  }

  Widget _buildPasswordField({
    required TextEditingController controller,
    required String hint,
    required bool obscureText,
    required VoidCallback togglePassword,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: Colors.grey.withOpacity(0.2)),
      ),
      child: TextFormField(
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: TextStyle(color: AppColors.lightIcon, fontSize: 15),
          border: InputBorder.none,
          contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 14),
          suffixIcon: IconButton(
            icon: Icon(
              obscureText ? Icons.visibility_off : Icons.visibility,
              color: Colors.grey,
              size: 20,
            ),
            onPressed: togglePassword,
          ),
        ),
        style: TextStyle(fontSize: 16),
      ),
    );
  }
}
