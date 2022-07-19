import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:food_app/FadeAnimation.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.shopping_bag,
              color: Colors.grey[800],
            ),
          ),
        ],
        elevation: 0.0,
        backgroundColor: Colors.grey[100],
        leading: const Icon(null),
        systemOverlayStyle: SystemUiOverlayStyle.light,
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  FadeAnimation(
                    1,
                    Text(
                      'Food Delivery',
                      style: TextStyle(
                          color: Colors.grey[30],
                          fontWeight: FontWeight.bold,
                          fontSize: 30),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 50,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        FadeAnimation(
                          1,
                          makeCategory(true, 'Pizza'),
                        ),
                        FadeAnimation(
                          1.3,
                          makeCategory(false, 'Burgers'),
                        ),
                        FadeAnimation(
                          1.4,
                          makeCategory(false, 'Kebab'),
                        ),
                        FadeAnimation(
                          1.5,
                          makeCategory(false, 'Deserts'),
                        ),
                        FadeAnimation(
                          1.6,
                          makeCategory(false, 'Salad'),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
            FadeAnimation(
              1,
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  'Free Delivery',
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  makeCategory(bool isActive, String title) {
    return AspectRatio(
      aspectRatio: isActive ? 3 : 2.5 / 1,
      child: Container(
        margin: const EdgeInsets.only(right: 5),
        decoration: BoxDecoration(
          color: isActive ? Colors.yellow[700] : Colors.white,
          borderRadius: BorderRadius.circular(50),
        ),
        child: Align(
          child: Text(
            title,
            style: TextStyle(
                color: isActive ? Colors.white : Colors.grey[500],
                fontSize: 18,
                fontWeight: isActive ? FontWeight.bold : FontWeight.w100),
          ),
        ),
      ),
    );
  }
}
