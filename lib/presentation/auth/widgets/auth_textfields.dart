import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

TextFormField getInput({
  required TextEditingController controller,
  required Function validator,
  required String hint,
  bool? isHidden,
  TextEditingController? repeatController,
  TextInputType? textInputType,
  InputDecoration? inputDecoration,
  TextStyle? textStyle,
  String? validatorText,
  List<TextInputFormatter>? inputFormatters,
  void Function(String)? onChanged,
}) {
  return TextFormField(
    controller: controller,
    cursorColor: Colors.black,
    cursorHeight: 25,
    style: textStyle ?? const TextStyle(color: Colors.black),
    obscureText: isHidden ?? false,
    keyboardType: textInputType,
    inputFormatters: inputFormatters,
    decoration: inputDecoration ?? inputWhiteStyle(hint),
    validator: (value) {
      if (repeatController != null) {
        // ignore: avoid_dynamic_calls
        return validator(value, repeatController) as String;
      }

      if (value!.isEmpty) {
        // ignore: avoid_dynamic_calls
        return validator(value) as String;
      }
      return null;
    },
    onChanged: onChanged,
  );
}

InputDecoration inputWhiteStyle(String hint) {
  return InputDecoration(
    labelText: hint,
    labelStyle: const TextStyle(
      color: Color.fromRGBO(255, 255, 255, 0.9),
    ),
    // hintText: hint,
    // hintStyle: const TextStyle(
    //   color: Color.fromRGBO(255, 255, 255, 0.9),
    // ),
    focusedBorder: const UnderlineInputBorder(
      borderSide: BorderSide(
        width: 0.9,
        color: Color.fromRGBO(255, 255, 255, 0.6),
      ),
    ),
    enabledBorder: const UnderlineInputBorder(
      borderSide: BorderSide(
        width: 0.9,
        color: Color.fromRGBO(255, 255, 255, 0.6),
      ),
    ),
  );
}

InputDecoration authStyle(
  String hint, {
  FocusNode? node,
  Widget? suffixIcon,
}) {
  return InputDecoration(
    fillColor: Colors.white,
    filled: true,
    labelText: hint,
    contentPadding: EdgeInsets.zero,
    labelStyle: const TextStyle(
      fontSize: 16,
      // color: AppColors
      //     .kGray500, // node.hasFocus ? AppColors.kPrimaryColor : AppColors.kCaption,
    ),
    // hintText: hint,
    // helperText: hint,
    hintStyle: const TextStyle(
      color: Colors.black,
    ),
    suffixIcon: suffixIcon,
    focusedBorder: const OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.transparent,
      ),
      // borderRadius:
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: const BorderSide(
        color: Colors.transparent,
      ),
      borderRadius: BorderRadius.circular(8),
    ),
    disabledBorder: OutlineInputBorder(
      borderSide: const BorderSide(
        color: Colors.transparent,
      ),
      borderRadius: BorderRadius.circular(8),
    ),
  );
}
