import 'package:codeunion_test/common/constants.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
  final Widget body;
  final Function() onClick;
  final ButtonStyle style;
  final double? width;
  final double? height;

  const CustomButton({
    Key? key,
    required this.body,
    required this.onClick,
    required this.style,
    this.width,
    this.height,
  }) : super(key: key);

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width ?? MediaQuery.of(context).size.width,
      height: widget.height == 0 ? null : widget.height,
      margin: const EdgeInsets.symmetric(vertical: 3),
      child: ElevatedButton(
        onPressed: () {
          widget.onClick();
        },
        style: widget.style,
        child: widget.body,
      ),
    );
  }
}

ButtonStyle purpleButtonStyle() {
  return ElevatedButton.styleFrom(
    onPrimary: Colors.white,
    primary: AppColors.kPrimaryColor,
    shadowColor: Colors.black,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(6),
    ),
  );
}
