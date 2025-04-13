import 'package:flutter/material.dart';
import 'package:hmeas/ui/common/widgets/square_input_field.dart';

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
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SquareInputField(
              controller: mobilenumberController,
              hintText: '1',
              onChanged: (value) {},
            ),
            const SizedBox(width: 10),
            SquareInputField(
              controller: mobilenumberController,
              hintText: '2',
              onChanged: (value) {},
            ),
            const SizedBox(width: 10),
            SquareInputField(
              controller: mobilenumberController,
              hintText: '3',
              onChanged: (value) {},
            ),
            const SizedBox(width: 10),
            SquareInputField(
              controller: mobilenumberController,
              hintText: '4',
              onChanged: (value) {},
            ),
          ],
        ),
      ),
    );
  }
}
