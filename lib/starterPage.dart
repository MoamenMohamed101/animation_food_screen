import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/FadeAnimation.dart';
import 'package:food_app/homePage.dart';
import 'package:page_transition/page_transition.dart';

class StarterPage extends StatefulWidget {
  const StarterPage({Key? key}) : super(key: key);

  @override
  State<StarterPage> createState() => _StarterPageState();
}

class _StarterPageState extends State<StarterPage>
    with TickerProviderStateMixin {
  AnimationController? animationController;
  Animation<double>? animation;
  bool textVisible = true;

  @override
  void initState() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 100),
    );
    animation =
        Tween<double>(begin: 1.0, end: 25.0).animate(animationController!);
    super.initState();
  }

  @override
  void dispose() {
    animationController!.dispose();
    super.dispose();
  }

  void onTap() {
    setState(
      () {
        textVisible = false;
      },
    );
    animationController?.forward().then(
          (value) => Navigator.push(
            context,
            PageTransition(
                child: const HomePage(), type: PageTransitionType.fade),
          ),
        );
  }

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
                  .5,
                  const Text(
                    'Taking order from faster Deloivery',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 50,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                FadeAnimation(
                  1,
                  const Text(
                    'see resturants nearby by \nadding location',
                    style: TextStyle(
                        fontSize: 18, color: Colors.white, height: 1.5),
                  ),
                ),
                const SizedBox(
                  height: 100,
                ),
                FadeAnimation(
                  1.2,
                  ScaleTransition(
                    scale: animation!,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: const LinearGradient(
                          colors: [Colors.yellow, Colors.orange],
                        ),
                      ),
                      child: AnimatedOpacity(
                        duration: const Duration(milliseconds: 50),
                        opacity: textVisible ? 1.0 : 0.0,
                        child: MaterialButton(
                          minWidth: double.infinity,
                          onPressed: () => onTap(),
                          child: const Text('Start'),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                FadeAnimation(
                  1.4,
                  AnimatedOpacity(
                    duration: const Duration(milliseconds: 50),
                    opacity: textVisible ? 1.0 : 0.0,
                    child: const Align(
                      child: Text(
                        'Now Deliver To your Door 24/7',
                        style: TextStyle(color: Colors.white70, fontSize: 15),
                      ),
                    ),
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