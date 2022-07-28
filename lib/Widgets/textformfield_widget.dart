import 'package:flutter/material.dart';
import 'package:school_app/Constants/constants.dart';

class TextFormFieldWidget extends StatelessWidget {
  final TextEditingController controller;
  final bool? obscureText;
  final String label;
  final Color? labelColor;
  final Color? bgColor;
  final Color? borderColor;
  final Function(String?)? onChanged;
  final String? Function(String?)? validator;
  const TextFormFieldWidget({
    Key? key,
    required this.controller,
    this.obscureText = false,
    required this.label,
    this.labelColor = kSecondaryColor,
    this.bgColor = kPrimaryLightColor,
    this.borderColor = kPrimaryLightColor,
    this.onChanged,
    this.validator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String? error;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          decoration: BoxDecoration(
            color: bgColor,
            border: Border.all(color: borderColor!, width: 1.0),
            borderRadius: BorderRadius.circular(12.0),
          ),
          child: TextFormField(
            controller: controller,
            obscureText: obscureText!,
            decoration: InputDecoration(
              labelText: label,
              labelStyle: TextStyle(
                color: labelColor,
                fontSize: 14.0,
              ),
              errorStyle: TextStyle(color: Colors.green),
              errorText: error,
              border: InputBorder.none,
              floatingLabelStyle: const TextStyle(color: kPrimaryColor),
            ),
            validator: validator,
            onChanged: onChanged,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10.0, top: 6.0),
          child: Text(error!),
        ),
      ],
    );
  }
}


// gradient: LinearGradient(
//           colors: [
//             kPrimaryLightColor,
//             kPrimaryUltraLightColor,
//             kPrimaryLightColor,
//           ],
//           begin: const FractionalOffset(0.0, 0.0),
//           end: const FractionalOffset(0.0, 1.0),
//           stops: [0.0, 0.5, 1.0],
//           tileMode: TileMode.clamp,
//         ),