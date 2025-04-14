import 'package:flutter/material.dart';
import 'package:hmeas/ui/common/widgets/square_input_field.dart';
import 'package:hmeas/ui/common/widgets/step_progress_indicator.dart';

class VerifyOTPScreen extends StatefulWidget {
  const VerifyOTPScreen({super.key});

  @override
  State<VerifyOTPScreen> createState() => _VerifyOTPScreenState();
}

class _VerifyOTPScreenState extends State<VerifyOTPScreen> {
  final TextEditingController Pin1Controller = TextEditingController();
  final TextEditingController Pin2Controller = TextEditingController();
  final TextEditingController Pin3Controller = TextEditingController();
  final TextEditingController Pin4Controller = TextEditingController();

  final FocusNode Pin1FocusNode = FocusNode();
  final FocusNode Pin2FocusNode = FocusNode();
  final FocusNode Pin3FocusNode = FocusNode();
  final FocusNode Pin4FocusNode = FocusNode();

  @override
  void dispose() {
    Pin1Controller.dispose();
    Pin2Controller.dispose();
    Pin3Controller.dispose();
    Pin4Controller.dispose();
    super.dispose();
  }

  void nextField({required String value, required FocusNode nextFocus}) {
    if (value.isNotEmpty) {
      FocusScope.of(context).requestFocus(nextFocus);
    }
  }

  void previousField({
    required String value,
    required FocusNode previousFocus,
  }) {
    if (value.isEmpty) {
      FocusScope.of(context).requestFocus(previousFocus);
    }
  }

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
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Verify your',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w500,
                fontFamily: 'ClashDisplay',
              ),
            ),
            const Text(
              'mobile number',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w600,
                fontFamily: 'ClashDisplay',
              ),
            ),

            const SizedBox(height: 8),

            const Text(
              'Enter the 4-digit code sent to your mobile number',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w300,
                fontFamily: 'OpenJakartaSans',
              ),
            ),

            const SizedBox(height: 32),

            const StepProgressIndicator(totalSteps: 5, currentStep: 3),

            const SizedBox(height: 48),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SquareInputField(
                  controller: Pin1Controller,
                  onChanged: (value) {},
                ),
                const SizedBox(width: 10),
                SquareInputField(
                  controller: Pin2Controller,
                  onChanged: (value) {},
                ),
                const SizedBox(width: 10),
                SquareInputField(
                  controller: Pin3Controller,
                  onChanged: (value) {},
                ),
                const SizedBox(width: 10),
                SquareInputField(
                  controller: Pin4Controller,
                  onChanged: (value) {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
