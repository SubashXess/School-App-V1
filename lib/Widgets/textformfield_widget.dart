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
  final AutovalidateMode? autovalidateMode;
  final Widget? suffixIcon;
  const TextFormFieldWidget({
    Key? key,
    required this.controller,
    this.obscureText = false,
    required this.label,
    this.labelColor,
    this.bgColor,
    this.borderColor,
    this.onChanged,
    this.validator,
    this.autovalidateMode,
    this.suffixIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: TextFormField(
        controller: controller,
        obscureText: obscureText!,
        maxLines: 1,
        autovalidateMode: autovalidateMode,
        decoration: InputDecoration(
          hintText: label,
          hintStyle: TextStyle(color: labelColor, fontSize: 15.0),
          filled: true,
          fillColor: bgColor,
          contentPadding: const EdgeInsets.symmetric(horizontal: 12.0),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.0),
            borderSide: BorderSide(
              color: Colors.red[200]!,
              width: 1.0,
            ),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.0),
            borderSide: BorderSide(
              color: Colors.red[200]!,
              width: 1.0,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.0),
            borderSide: const BorderSide(
              color: kPrimaryLightColor,
              width: 1.0,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.0),
            borderSide: BorderSide(
              color: borderColor!,
              width: 1.0,
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.0),
            borderSide: const BorderSide(
              color: kPrimaryUltraLightColor,
              width: 1.0,
            ),
          ),
          floatingLabelStyle: const TextStyle(color: kPrimaryColor),
          suffixIcon: suffixIcon,
        ),
        validator: validator,
        onChanged: onChanged,
      ),
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