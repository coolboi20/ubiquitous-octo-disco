import 'package:flutter/material.dart';

enum ButtonState {
  primary,
  secondary,
  disabled,
}

class CoolButton extends StatelessWidget {
  final String text;
  final ButtonState state;

  const CoolButton({
    super.key,
    required this.text,
    required this.state,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: state != ButtonState.disabled ? () {} : null,
      child: Text(text),
    );
  }
}