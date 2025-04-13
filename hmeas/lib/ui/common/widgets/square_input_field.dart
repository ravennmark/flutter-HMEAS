import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SquareInputField extends StatefulWidget {
  final TextEditingController controller;
  final String? hintText;
  final ValueChanged<String>? onChanged;

  const SquareInputField({
    Key? key,
    required this.controller,
    this.hintText,
    this.onChanged,
  }) : super(key: key);

  @override
  _SquareInputFieldState createState() => _SquareInputFieldState();
}

class _SquareInputFieldState extends State<SquareInputField> {
  @override
  void initState() {
    super.initState();
    widget.controller.addListener(_onTextChanged);
  }

  void _onTextChanged() {
    final text = widget.controller.text;
    if (text.length > 1) {
      widget.controller.value = TextEditingValue(
        text: text.substring(0, 1),
        selection: TextSelection.collapsed(offset: 1),
      );
    }
    if (widget.onChanged != null && text.isNotEmpty) {
      widget.onChanged!(text);
    }
  }

  @override
  void dispose() {
    widget.controller.removeListener(_onTextChanged);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      height: 100,
      child: TextField(
        controller: widget.controller,
        keyboardType: TextInputType.number,
        inputFormatters: <TextInputFormatter>[
          FilteringTextInputFormatter.digitsOnly,
          LengthLimitingTextInputFormatter(1),
        ],
        textAlign: TextAlign.center,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: Colors.blueGrey.shade400, width: 1),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: Color(0xFF2952D9), width: 1),
          ),
          hintText: widget.hintText,
          contentPadding: EdgeInsets.zero,
        ),
        onChanged: (value) {
          if (widget.onChanged != null && value.isNotEmpty) {
            widget.onChanged!(value);
          }
        },
      ),
    );
  }
}
