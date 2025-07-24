import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
void BuildErrorBar(
  BuildContext context,
  dynamic state,
)  {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(backgroundColor: Colors.red, content: Text(state.errorMessage)),
  );
}
