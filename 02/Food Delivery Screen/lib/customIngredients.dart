import 'package:flutter/material.dart';

class customIngredients extends StatelessWidget {
  const customIngredients({
    super.key,
    required this.ColorIngredients,
    required this.imageIngredients,
    required this.textIngredients,
  });
  final Color ColorIngredients;
  final String imageIngredients;
  final String textIngredients;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: ColorIngredients,borderRadius: BorderRadius.circular(19)),
      width: 77,
      height: 90,
      child: Column(
        children: [SizedBox(height: 8,),
          Image.asset(imageIngredients, width: 66, height: 46),SizedBox(height: 3,),
          Text(textIngredients, style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}
