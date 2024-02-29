import 'package:flutter/material.dart';
import 'package:genshin_app/models/character.dart';
import 'package:genshin_app/widgets/custom_button.dart';
import 'package:genshin_app/widgets/transition.dart';

class DetailsCharacterPage extends StatefulWidget {
  const DetailsCharacterPage({Key? key, required this.vision})
      : super(key: key);

  final Vision vision;

  @override
  State<DetailsCharacterPage> createState() => _DetailCharacterPageState();
}

class _DetailCharacterPageState extends State<DetailsCharacterPage> {
  int valueIndexCharacter = 0;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: -size.height * 0.15,
            right: -size.height * 0.20,
            child: TweenAnimationBuilder<double>(
                duration: const Duration(milliseconds: 250),
                tween: Tween(begin: 0, end: 1),
                builder: (context, value, __) {
                  return AnimatedContainer(
                    duration: const Duration(milliseconds: 400),
                    height: value * (size.height * 0.5),
                    width: value * (size.height * 0.5),
                    decoration: BoxDecoration(
                      color: widget.vision.listImage[valueIndexCharacter].color,
                      image: DecorationImage(
                        image: AssetImage(widget.vision.icon),
                      ),
                      shape: BoxShape.circle,
                    ),
                  );
                }),
          ),
          Positioned(
            top: kToolbarHeight,
            left: 16,
            right: 16,
            child: Row(
              children: [
                CustomButton(
                  onTap: () => Navigator.pop(context),
                  child: const Icon(
                    Icons.arrow_back_rounded,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: size.height * 0.2,
            right: 0,
            left: 0,
            child: FittedBox(
              child: Text(
                widget.vision.listImage[valueIndexCharacter].name,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[100],
                ),
              ),
            ),
          ),
          Positioned(
            top: size.height * 0.22,
            right: size.height * 0.07,
            left: size.height * 0.07,
            child: Hero(
              tag: widget.vision.name,
              child: Image(
                image: AssetImage(
                  widget.vision.listImage[valueIndexCharacter].image,
                ),
              ),
            ),
          ),
          Positioned(
            top: size.height * 0.6,
            left: 16,
            right: 16,
            child: Column(
              children: [
                Row(
                  children: [
                    ShakeTransition(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          /*Text(
                            widget.vision.name,
                            style: const TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                            ),
                          ),*/
                          const SizedBox(height: 30),
                          Text(
                            widget.vision.listImage[valueIndexCharacter].name,
                            style: const TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 20,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                ShakeTransition(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 8),
                      Row(
                        children: List.generate(
                          5,
                          (index) => Icon(
                            Icons.star,
                            color: widget.vision.listImage[valueIndexCharacter]
                                        .stars >
                                    index
                                ? Colors.amber
                                : Colors.white,
                          ),
                        ),
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        'Perfil',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        widget
                            .vision.listImage[valueIndexCharacter].description,
                        style: const TextStyle(
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Positioned(
            top: size.height * 0.55,
            left: 16,
            right: 16,
            child: Row(
              children: [
                ShakeTransition(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Personaje',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Row(
                        children: List.generate(
                            widget.vision.listImage.length,
                            (index) => GestureDetector(
                                  onTap: () {
                                    valueIndexCharacter = index;
                                    setState(() {});
                                  },
                                  child: Container(
                                    margin: const EdgeInsets.only(right: 8),
                                    height: 30,
                                    width: 30,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(widget
                                              .vision.listImage[index].avatar)),
                                      shape: BoxShape.circle,
                                      border: index == valueIndexCharacter
                                          ? Border.all(
                                              color: Colors.amber, width: 1.5)
                                          : null,
                                    ),
                                  ),
                                )),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
