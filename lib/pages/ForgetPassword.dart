import 'package:flutter/material.dart';
import 'package:teda1/pages/LoginPage.dart';
import 'package:teda1/service/auth_service.dart';


class ForgetPassword extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();

  ForgetPassword({Key? key}) : super(key: key);

  final AuthService _authService = AuthService(); // Create an instance of AuthService

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Image.asset(
                  "assets/images/login.png",
                ),
              ),
              // Email input
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                padding: const EdgeInsets.symmetric(horizontal: 15),
                height: 55,
                decoration: BoxDecoration(
                  color: const Color(0xFFF5F9FD),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0xFF475269).withOpacity(0.3),
                      blurRadius: 5,
                      spreadRadius: 1,
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.person,
                      size: 27,
                      color: const Color(0xFF475269).withOpacity(0.3),
                    ),
                    const SizedBox(width: 15),
                    SizedBox(
                      width: 250,
                      child: TextFormField(
                        controller: emailController,
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: "e-mail",
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              padding: EdgeInsets.symmetric(horizontal: 15),
              height: 55,
              decoration: BoxDecoration(
                color: Color(0xFFF5F9FD),
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xFF475269).withOpacity(0.3),
                    blurRadius: 5,
                    spreadRadius: 1,
                  ),
                ],
              ),

              child: Row(children: [
                Icon(
                  Icons.lock,
                  size: 27,
                  color: Color(0xFF475269).withOpacity(0.3),
                ),
                SizedBox(height: 20),
                Container(
                  width: 250,
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Yeni Şifre"),
                  ),
                )
              ])
              ,
            ),
              const SizedBox(height: 30),
              // Reset Password button
              InkWell(
                onTap: () async {
                  String email = emailController.text.trim();

                  if (email.isNotEmpty) {
                    // Call the forgotPassword method from AuthService
                    String? result = await _authService.forgotPassword(email);
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text(
                        "Şifreniz Güncellendi.Lütfen Giriş Yapınız" ),
                        duration: Duration(seconds :2),
                      ),
                     );
                     
                    Navigator.push
                     (
                       context,
                      MaterialPageRoute
                      (
                        builder: (context) 
                        {
                          return const LoginPage();
                        },
                      ),
                     );

                    if (result != null) {
                      // Show success message or navigate to success page
                      print("Password reset email sent. Check your inbox.");
                    } else {
                      // Show error message
                      print("Error sending password reset email.");
                    }
                  } else {
                    // Show error message for empty email
                    print("Email can't be empty.");
                  }
                },
                child: Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  height: 55,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: const Color(0xFF475269),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0xFF675269).withOpacity(0.3),
                        blurRadius: 5,
                        spreadRadius: 1,
                      ),
                    ],
                  ),
                  child: const Text(
                    "Reset Password",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                      letterSpacing: 1,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
