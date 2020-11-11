import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutterchat/controllers/bindings/authController.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends GetWidget<AuthController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.network(
                      'https://cdn.dribbble.com/users/226242/screenshots/10822340/media/a20554dec4e411694280cab53036bcdd.jpg'),
                  Text(
                    "Let's get started",
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Container(
                    width: 200,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                    ),
                    child: FittedBox(
                      child: MaterialButton(
                        onPressed: () {
                          controller.signInWithGoogle();
                        },
                        child: Row(
                          children: [
                            Text(
                              "G",
                              style: GoogleFonts.poppins(
                                color: Color.fromRGBO(18, 18, 18, 1),
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              "Sign in with Google",
                              style: GoogleFonts.poppins(
                                color: Color.fromRGBO(18, 18, 18, 1),
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
