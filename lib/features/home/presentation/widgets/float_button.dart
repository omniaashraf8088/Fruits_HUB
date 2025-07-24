import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';

class FloatButton extends StatelessWidget {
  const FloatButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Action to perform when the button is pressed
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Floating Action Button Pressed')),
          );
        },
        backgroundColor:AppColors.deepGrayColor,
        child: Icon(Icons.add),
      ),
      body: Center(
        child: Text('Press the Floating Action Button'),
      ),
    );
  }
}