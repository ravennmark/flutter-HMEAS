import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hmeas/ui/common/widgets/step_progress_indicator.dart';

/// This displays the choose account type screen.
class AccountTypeScreen extends StatelessWidget {
  const AccountTypeScreen({super.key});

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
          'Log in',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w400,
            fontFamily: 'ClashDisplay',
          ),
        ),
        centerTitle: true,
      ),

      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,

          children: [
            const Text(
              'Choose your',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w500,
                fontFamily: 'ClashDisplay',
              ),
            ),
            const Text(
              'account type',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w600,
                fontFamily: 'ClashDisplay',
              ),
            ),

            const SizedBox(height: 48),

            const StepProgressIndicator(totalSteps: 5, currentStep: 0),

            const SizedBox(height: 48),
            Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey.withValues(alpha: 0.5),
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Row(
                children: [
                  SvgPicture.asset(
                    'assets/images/img_placeholder.svg',
                    width: 60.0,
                    height: 60.0,
                  ),
                  const SizedBox(width: 16.0),
                  child: Column( 
                    const Text(
                      'Patient',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'ClashDisplay',
                      ),
                    ),
                ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
