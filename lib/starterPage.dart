import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/FadeAnimation.dart';

class StarterPage extends StatefulWidget {
  const StarterPage({Key? key}) : super(key: key);

  @override
  State<StarterPage> createState() => _StarterPageState();
}

class _StarterPageState extends State<StarterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/starter-image.jpg'),
              fit: BoxFit.cover),
        ),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              colors: [
                Colors.black.withOpacity(.9),
                Colors.black.withOpacity(.8),
                Colors.black.withOpacity(.2),
              ],
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FadeAnimation(
                  1,
                  Text(
                    'Taking order from Deloivery',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 50,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'see resturants nearby by \nadding location',
                  style:
                      TextStyle(fontSize: 18, color: Colors.white, height: 1.5),
                ),
                const SizedBox(
                  height: 100,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: const LinearGradient(
                      colors: [Colors.yellow, Colors.orange],
                    ),
                  ),
                  child: MaterialButton(
                    minWidth: double.infinity,
                    onPressed: () {},
                    child: const Text('Start'),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Align(
                  child: Text(
                    'Now Deliver To your Door 24/7',
                    style: TextStyle(color: Colors.white70, fontSize: 15),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
