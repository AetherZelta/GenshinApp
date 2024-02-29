import 'package:flutter/material.dart';
import 'package:genshin_app/pages/home_page.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  PageController _controller = PageController();
  bool OnLastPage = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            onPageChanged: (index) {
              setState(() {
                OnLastPage = (index == 2);
              });
            },
            children: [
              Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/aetherwalk.png'),
                    fit: BoxFit.fitWidth,
                  ),
                ),
                //color: Colors.blue,
              ),
              Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/aetherwalk.png'),
                    fit: BoxFit.fitWidth,
                  ),
                ),
                //color: Colors.yellow,
              ),
              Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/aetherfall.png'),
                    fit: BoxFit.fitWidth,
                  ),
                ),
                //color: Colors.green,
              ),
            ],
          ),
          Container(
            alignment: Alignment(0, 0.75),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    _controller.jumpToPage(2);
                  },
                  child: const Text(
                    'saltar',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
                SmoothPageIndicator(controller: _controller, count: 3),
                OnLastPage
                    ? GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return HomePageGenshin();
                              },
                            ),
                          );
                        },
                        child: const Text(
                          'hecho',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      )
                    : GestureDetector(
                        onTap: () {
                          _controller.nextPage(
                            duration: Duration(milliseconds: 500),
                            curve: Curves.easeIn,
                          );
                        },
                        child: const Text(
                          'siguiente',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
