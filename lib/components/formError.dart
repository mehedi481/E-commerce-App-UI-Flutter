import 'package:flutter/material.dart';
class FormError extends StatelessWidget {
  const FormError({
    Key? key,
    required this.error,
  }) : super(key: key);

  final List<String> error;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        error.length,
        (index) => formError(error[index]),
      ),
    );
  }

  Row formError(String error) {
    return Row(
      children: [
        Icon(
          Icons.warning,
          color: Colors.red,
        ),
        SizedBox(width: 10),
        Text(error)
      ],
    );
  }
}