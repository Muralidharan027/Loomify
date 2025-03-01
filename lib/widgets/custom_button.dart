import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final bool isOutlined;
  final bool isFullWidth;
  final IconData? icon;

  const CustomButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.isOutlined = false,
    this.isFullWidth = true,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style =
        isOutlined
            ? OutlinedButton.styleFrom(minimumSize: const Size(88, 48))
            : FilledButton.styleFrom(minimumSize: const Size(88, 48));

    Widget buttonChild = Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        if (icon != null) ...[Icon(icon), const SizedBox(width: 8)],
        Text(text),
      ],
    );

    Widget button =
        isOutlined
            ? OutlinedButton(
              style: style,
              onPressed: onPressed,
              child: buttonChild,
            )
            : FilledButton(
              style: style,
              onPressed: onPressed,
              child: buttonChild,
            );

    if (isFullWidth) {
      button = SizedBox(width: double.infinity, child: button);
    }

    return button;
  }
}
