
import 'package:flutter/material.dart';
import 'package:fruits_hub/core/widgets/fruit_items.dart';

class FruiteItemsList extends StatelessWidget {
  const FruiteItemsList({super.key});

  @override
  Widget build(BuildContext context) {
     return SliverGrid.builder(
      gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 163/214,
        mainAxisSpacing: 8,
        crossAxisSpacing: 16
        
        ),
      
      itemBuilder:(context,Index){ 
        return  FruitItems();}
       
    );
  }
}