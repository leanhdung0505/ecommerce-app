import 'package:ecommerce_app/routes/app_route.dart';
import 'package:ecommerce_app/utils/constants/image_constant.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool _isPasswordVisible = false;
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

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
                _buildSignUpButton(),
                const SizedBox(height: 50),
                _buildSocialSignUpSection(),
                const SizedBox(height: 30),
                _buildSignUpSection(),
                const SizedBox(height: 24),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Text('Create an account',
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
        crossAxisAlignment: CrossAxisAlignment.start,
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
          const SizedBox(
            height: 16,
          ),
          TextFormField(
            obscureText: !_isPasswordVisible,
            controller: _confirmPasswordController,
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter your password';
              }
              if (value != _passwordController.text) {
                return 'Password do not match';
              }
              return null;
            },
            decoration: InputDecoration(
              fillColor: const Color(0XFFF3F3F3),
              filled: true,
              hintText: 'Confirm Password',
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
          const SizedBox(
            height: 10,
          ),
          RichText(
            text: TextSpan(
                text: 'By clicking the ',
                style: GoogleFonts.montserrat(
                  color: const Color(0XFF575757),
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
                children: <TextSpan>[
                  TextSpan(
                      text: 'Register ',
                      style: GoogleFonts.montserrat(
                        color: const Color(0XFFFF4B26),
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      )),
                  TextSpan(
                    text: 'button, you agree to the public offer',
                    style: GoogleFonts.montserrat(
                      color: const Color(0XFF575757),
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  )
                ]),
          ),
        ],
      ),
    );
  }

  Widget _buildSignUpButton() {
    return SizedBox(
      width: double.maxFinite,
      height: 55,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0XFFF83758),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
        ),
        child: Text(
          'Create Account',
          style: GoogleFonts.montserrat(
              fontSize: 24, fontWeight: FontWeight.w600, color: Colors.white),
        ),
      ),
    );
  }

  Widget _buildSocialSignUpSection() {
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

  Widget _buildSignUpSection() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'I Already Have an Account ',
          style: GoogleFonts.montserrat(
              color: const Color(0XFF575757),
              fontWeight: FontWeight.w500,
              fontSize: 15),
        ),
        GestureDetector(
          onTap: () => AppRoute.navigateTo(context, AppRoute.signIn),
          child: RichText(
              text: TextSpan(
                  text: "Sign in",
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
