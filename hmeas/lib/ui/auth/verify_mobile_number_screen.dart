import 'package:flutter/material.dart';

class VerifyMobileNumberScreen extends StatefulWidget {
  const VerifyMobileNumberScreen({super.key});

  @override
  State<VerifyMobileNumberScreen> createState() =>
      _VerifyMobileNumberScreenState();
}

class _VerifyMobileNumberScreenState extends State<VerifyMobileNumberScreen> {
  final TextEditingController mobilenumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          'Mobile Number Verification',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w400,
            fontFamily: 'ClashDisplay',
          ),
        ),
        centerTitle: true,
      ),

      // input fields for pin code
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: mobilenumberController,
              decoration: const InputDecoration(
                labelText: 'Enter your mobile number',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.phone,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Handle verification logic here
              },
              child: const Text('Verify'),
            ),
          ],
        ),
      ),
    );
  }
}
