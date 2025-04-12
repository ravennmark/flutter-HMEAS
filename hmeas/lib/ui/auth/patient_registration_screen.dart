import 'package:flutter/material.dart';
import 'package:hmeas/ui/common/widgets/step_progress_indicator.dart';
import 'package:hmeas/ui/common/widgets/labeled_text_field.dart'; // Make sure to import the LabeledTextField widget

class PatientRegistrationScreen extends StatefulWidget {
  const PatientRegistrationScreen({super.key});

  @override
  State<PatientRegistrationScreen> createState() =>
      _PatientRegistrationScreenState();
}

class _PatientRegistrationScreenState extends State<PatientRegistrationScreen> {
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController birthdayController = TextEditingController();
  final TextEditingController genderController = TextEditingController();

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
          'Registration',
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
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Account',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w500,
                fontFamily: 'ClashDisplay',
              ),
            ),
            const Text(
              'Basic Info',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w600,
                fontFamily: 'ClashDisplay',
              ),
            ),
            const SizedBox(height: 32),
            const StepProgressIndicator(totalSteps: 5, currentStep: 1),
            const SizedBox(height: 48),

            // Use LabeledTextField for input fields
            LabeledTextField(
              label: 'First Name',
              controller: firstNameController,
            ),
            LabeledTextField(
              label: 'Last Name',
              controller: lastNameController,
            ),
            LabeledTextField(
              label: 'Email',
              controller: emailController,
              keyboardType: TextInputType.emailAddress,
            ),
            LabeledTextField(
              label: 'Birthday',
              controller: birthdayController,
              keyboardType: TextInputType.datetime,
            ),
            LabeledTextField(label: 'Gender', controller: genderController),

            // const SizedBox(height: 0),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {
                  // Handle forgot password
                },
                child: const Text(
                  'Forgot password?',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF2952D9),
                    fontFamily: 'ClashDisplay',
                  ),
                ),
              ),
            ),

            const SizedBox(height: 8),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  // Handle next action
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF2952D9),
                  elevation: 7,
                  shadowColor: const Color(0xFF2952D9).withValues(alpha: 0.5),
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                child: const Text(
                  'Next',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'PlusJakartaSans',
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
