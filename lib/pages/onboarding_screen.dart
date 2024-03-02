import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/material.dart';
import 'package:genshin_app/pages/home_page.dart';
import 'package:lottie/lottie.dart';
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
                child: Center(
                  child: BlurryContainer(
                    color: Colors.white.withOpacity(0.15),
                    blur: 6,
                    elevation: 6,
                    borderRadius: BorderRadius.circular(20),
                    child: SizedBox(
                      height: 580,
                      width: 280,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: SizedBox(
                              width: 200,
                              height: 200,
                              child:
                                  Lottie.asset('assets/animations/game.json'),
                            ),
                          ),
                          const Text(
                            'Preparate para tu aventura',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                          const Padding(
                            padding:
                                EdgeInsets.only(top: 40, left: 10, right: 10),
                            child: Text(
                              'Si haz comenzado tu viaje por Teyvat hace poco ' +
                                  'la siguiente aplicacion te dara los detalles necesarios para que conozcas mejor ' +
                                  'los detalles del mundo que exploraras.',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/aetherwalk.png'),
                    fit: BoxFit.fitWidth,
                  ),
                ),
                child: Center(
                  child: BlurryContainer(
                    color: Colors.white.withOpacity(0.15),
                    blur: 6,
                    elevation: 6,
                    borderRadius: BorderRadius.circular(20),
                    child: SizedBox(
                      height: 580,
                      width: 280,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: SizedBox(
                              width: 200,
                              height: 200,
                              child:
                                  Lottie.asset('assets/animations/fight.json'),
                            ),
                          ),
                          const Text(
                            'Mejora tus equipos',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                          const Padding(
                            padding:
                                EdgeInsets.only(top: 40, left: 10, right: 10),
                            child: Text(
                              'En esta aplicacion se te daran detalles de personajes ' +
                                  'que conoceras en tu viaje, estos podran unirse a ti en tu aventura ' +
                                  'y necesitaras conocer como funcionan para armar las mejores combinaciones',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
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
                child: Center(
                  child: BlurryContainer(
                    color: Colors.white.withOpacity(0.15),
                    blur: 6,
                    elevation: 6,
                    borderRadius: BorderRadius.circular(20),
                    child: SizedBox(
                      height: 580,
                      width: 280,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: SizedBox(
                              width: 200,
                              height: 200,
                              child: Lottie.asset(
                                  'assets/animations/success.json'),
                            ),
                          ),
                          const Text(
                            'Bienvenido a Teyvat',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                          const Padding(
                            padding:
                                EdgeInsets.only(top: 40, left: 10, right: 10),
                            child: Text(
                              'Bienvenido al mundo de Genshin Impact ' +
                                  'esperamos que con esta guia seas capaz de prosperar ' +
                                  'y disfrutar del viaje junto a miles de jugadores',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                //color: Colors.green,
              ),
            ],
          ),
          Container(
            alignment: const Alignment(0, 0.90),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    _controller.jumpToPage(2);
                  },
                  child: BlurryContainer(
                    color: Colors.white.withOpacity(0.20),
                    blur: 8,
                    elevation: 6,
                    borderRadius: BorderRadius.circular(10),
                    child: const Text(
                      'Saltar',
                      style: TextStyle(
                        color: Colors.black,
                      ),
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
                        child: BlurryContainer(
                          color: Colors.white.withOpacity(0.20),
                          blur: 8,
                          elevation: 6,
                          borderRadius: BorderRadius.circular(10),
                          child: const Text(
                            'Hecho',
                            style: TextStyle(
                              color: Colors.black,
                            ),
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
                        child: BlurryContainer(
                          color: Colors.white.withOpacity(0.20),
                          blur: 8,
                          elevation: 6,
                          borderRadius: BorderRadius.circular(10),
                          child: const Text(
                            'Siguiente',
                            style: TextStyle(
                              color: Colors.black,
                            ),
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
