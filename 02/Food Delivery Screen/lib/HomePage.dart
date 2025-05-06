import 'package:ecommerce/customIngredients.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios),
        actions: [Icon(Icons.favorite)],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: CircleAvatar(
                radius: 175,
                backgroundColor: Color(0xffC4C4C4).withValues(alpha: 0.2),
                child: Image.asset("assets/images/food.png"),
              ),
            ),
            SizedBox(height: 11),
            Container(
              width: 110,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Color(0xffF9BA04),
              ),
              child: Row(
                children: [
                  IconButton(onPressed: () {}, icon: Icon(Icons.remove)),
                  Text(
                    "1",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  IconButton(onPressed: () {}, icon: Icon(Icons.add)),
                ],
              ),
            ),
            SizedBox(height: 10),
            ListTile(
              title: Text(
                "Hamburger",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                "Delivery in 20Min",
                style: TextStyle(fontSize: 17),
              ),
              trailing: Text(
                r"$19.99",
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff11AB69),
                ),
              ),
            ),
            Row(
              children: [
                Text(
                  "Ingredients",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                customIngredients(
                  ColorIngredients: Color(0xffF9BA0433),
                  imageIngredients: "assets/images/Beef.png",
                  textIngredients: "Beef",
                ),
                customIngredients(
                  ColorIngredients: Color(0xffF2E6FE),
                  imageIngredients: "assets/images/Tomatoe.png",
                  textIngredients: "Tomatoe",
                ),
                customIngredients(
                  ColorIngredients: Color(0xffE6FEE8),
                  imageIngredients: "assets/images/Pepper.png",
                  textIngredients: "Pepper",
                ),
                customIngredients(
                  ColorIngredients: Color(0xffFEE6E6),
                  imageIngredients: "assets/images/Onion.png",
                  textIngredients: "Onion",
                ),
              ],
            ),
            SizedBox(height: 13),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 354,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Color(0xff11AB69),
                  ),
                  child: Align(
                    child: Text(
                      "Add to Card",
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
