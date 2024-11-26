import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();

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
                const SizedBox(height: 20),
                Text(
                    'We will send you a message to set or reset your new password',
                    style: GoogleFonts.montserrat(
                      textStyle: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    )),
                const SizedBox(height: 30),
                _buildSubmitButton(),
                const SizedBox(height: 50),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Text('Forgot\nPassword!',
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
      child: TextFormField(
        controller: _emailController,
        validator: (value) {
          if (value!.isEmpty || !isValidEmail(value)) {
            return 'Please enter your email';
          }
          return null;
        },
        decoration: InputDecoration(
          fillColor: const Color(0XFFF3F3F3),
          filled: true,
          hintText: 'Enter your email address',
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
          prefixIcon: const Icon(Icons.email, color: Color(0XFF626262)),
          contentPadding: const EdgeInsets.symmetric(vertical: 16),
        ),
      ),
    );
  }

  Widget _buildSubmitButton() {
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
          'Submit',
          style: GoogleFonts.montserrat(
              fontSize: 24, fontWeight: FontWeight.w600, color: Colors.white),
        ),
      ),
    );
  }

  bool isValidEmail(String? inputString, {bool isRequired = false}) {
    bool isInputStringValid = false;
    if (!isRequired && (inputString == null ? true : inputString.isEmpty)) {
      isInputStringValid = true;
    }
    if (inputString != null && inputString.isNotEmpty) {
      const pattern =
          r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
      final regExp = RegExp(pattern);
      isInputStringValid = regExp.hasMatch(inputString);
    }
    return isInputStringValid;
  }
}
