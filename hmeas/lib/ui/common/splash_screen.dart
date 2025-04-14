/* @brief This is the splash screen of the app. It displays the logo and a loading indicator.
 *
 * 
 */
import 'package:flutter/material.dart';
// import 'package:hmeas/ui/auth/login_screen.dart';
// import 'package:hmeas/ui/auth/mobile_number_
// import 'package:hmeas/ui/auth/verify_otp_screen.dart';
import 'package:hmeas/ui/auth/create_password_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const CreatePasswordScreen()),
      );
    });

    //UI starts here
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/vitawatch_logo.png',
                    width: 300,
                    height: 300,
                  ),
                  const SizedBox(height: 20),
                  const CircularProgressIndicator(),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Column(
              children: const [
                Text(
                  'A Software Engineering 2 Project',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Colors.blueGrey,
                    fontFamily: 'PlusJakartaSans',
                  ),
                ),
                Text(
                  'BSCS - 3C',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Colors.blueGrey,
                    fontFamily: 'Plus Jakarta Sans',
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
