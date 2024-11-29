import 'package:ecommerce_app/routes/app_route.dart';
import 'package:ecommerce_app/utils/constants/image_constant.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  bool _isPasswordVisible = false;
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 40),
                _buildHeader(),
                const SizedBox(height: 32),
                _buildInputFields(),
                const SizedBox(height: 24),
                _buildSignInButton(),
                const SizedBox(height: 50),
                _buildSocialSignInSection(),
                const SizedBox(height: 30),
                _buildSignInSection(),
                const SizedBox(height: 24),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Text('Welcome\nBack!',
        style: GoogleFonts.montserrat(
          textStyle: const TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.w700,
          ),
        ));
  }

  Widget _buildInputFields() {
    return Form(
      key: _formKey,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          TextFormField(
            controller: _usernameController,
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter your username or email';
              }
              return null;
            },
            decoration: InputDecoration(
              fillColor: const Color(0XFFF3F3F3),
              filled: true,
              hintText: 'Username or Email',
              hintStyle: GoogleFonts.montserrat(
                  color: const Color(0XFF676767),
                  fontWeight: FontWeight.w500,
                  fontSize: 15),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: const BorderSide(
                  color: Color(0XFFA8A8A9),
                  width: 1,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: const BorderSide(
                  color: Color.fromARGB(255, 221, 221, 221),
                  width: 1,
                ),
              ),
              prefixIcon: const Icon(Icons.person, color: Color(0XFF626262)),
              contentPadding: const EdgeInsets.symmetric(vertical: 16),
            ),
          ),
          const SizedBox(height: 16),
          TextFormField(
            obscureText: !_isPasswordVisible,
            controller: _passwordController,
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter your password';
              }
              return null;
            },
            decoration: InputDecoration(
              fillColor: const Color(0XFFF3F3F3),
              filled: true,
              hintText: 'Password',
              hintStyle: GoogleFonts.montserrat(
                  color: const Color(0XFF676767),
                  fontWeight: FontWeight.w500,
                  fontSize: 15),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: const BorderSide(
                  color: Color(0XFFA8A8A9),
                  width: 1,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: const BorderSide(
                  color: Color.fromARGB(255, 221, 221, 221),
                  width: 1,
                ),
              ),
              prefixIcon: const Icon(Icons.lock, color: Color(0XFF626262)),
              suffixIcon: IconButton(
                icon: Icon(
                  _isPasswordVisible
                      ? Icons.visibility_outlined
                      : Icons.visibility_off_outlined,
                  color: const Color(0XFF626262),
                ),
                onPressed: () {
                  setState(() {
                    _isPasswordVisible = !_isPasswordVisible;
                  });
                },
              ),
              contentPadding: const EdgeInsets.symmetric(vertical: 16),
            ),
          ),
          TextButton(
            onPressed: () =>
                AppRoute.navigateTo(context, AppRoute.forgotPassword),
            child: Text(
              'Forgot Password?',
              style: GoogleFonts.montserrat(
                color: const Color(0XFFF83758),
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSignInButton() {
    return SizedBox(
      width: double.maxFinite,
      height: 55,
      child: ElevatedButton(
        onPressed: () =>
            AppRoute.navigateTo(context, AppRoute.getStartedScreen),
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0XFFF83758),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
        ),
        child: Text(
          'Login',
          style: GoogleFonts.montserrat(
              fontSize: 24, fontWeight: FontWeight.w600, color: Colors.white),
        ),
      ),
    );
  }

  Widget _buildSocialSignInSection() {
    return Column(
      children: [
        Row(
          children: [
            const Expanded(child: Divider()),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  "OR Continue with",
                  style: GoogleFonts.montserrat(
                      color: const Color(0XFF575757),
                      fontWeight: FontWeight.w500,
                      fontSize: 15),
                )),
            const Expanded(child: Divider()),
          ],
        ),
        const SizedBox(height: 24),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildSocialButton(ImageConstant.imgGoogle, () {}),
            const SizedBox(width: 16),
            _buildSocialButton(ImageConstant.imgApple, () {}),
            const SizedBox(width: 16),
            _buildSocialButton(ImageConstant.imgFacebook, () {}),
          ],
        ),
      ],
    );
  }

  Widget _buildSocialButton(String iconPath, VoidCallback onPressed) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: const Color(0XFFF83758).withOpacity(0.5),
            width: 1,
          ),
        ),
        child: Image.asset(
          iconPath,
          height: 24,
          width: 24,
        ),
      ),
    );
  }

  Widget _buildSignInSection() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Create An Account ',
          style: GoogleFonts.montserrat(
              color: const Color(0XFF575757),
              fontWeight: FontWeight.w500,
              fontSize: 15),
        ),
        GestureDetector(
          onTap: () => AppRoute.navigateTo(context, AppRoute.signUp),
          child: RichText(
              text: TextSpan(
                  text: "Sign up",
                  style: GoogleFonts.montserrat(
                    color: const Color(0XFFF83758),
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ).copyWith(
                    decoration: TextDecoration.underline,
                    decorationColor: const Color(0XFFF83758),
                  ))),
        ),
      ],
    );
  }
}
