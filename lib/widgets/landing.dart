import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';

class Landing extends StatefulWidget {
  const Landing({
    super.key,
    this.onLogoTap,
    this.onMenuTap,
  });

  final VoidCallback? onLogoTap;
  final VoidCallback? onMenuTap;

  @override
  _LandingState createState() => _LandingState();
}

class _LandingState extends State<Landing> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 120,
          margin: const EdgeInsets.only(
            top: 40.0,
            left: 25.0,
          ),
          // child: Row(
          //   // children: [
          //   //   IconButton(
          //   //     onPressed: widget.onMenuTap,
          //   //     icon: const Icon(Icons.menu),
          //   //     color: CustomColor.scaffoldBg,
          //   //   ),
          //   //   const SizedBox(width: 10),
          //   // ],
          // ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.width / 1.2,
          width: MediaQuery.of(context).size.width / 1,
          child: Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Image.asset(
              'assets/me.png',
              fit: BoxFit.contain,
            ),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.width / 1,
          child: Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 20.0,
              vertical: 10.0,
            ),
            constraints: const BoxConstraints(minHeight: 350.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Hi! \nI'm Gervin Paul \nA Web | Mobile developer",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 20,
                      height: 1.5,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                SizedBox(
                  width: 250,
                  height: 50,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.resolveWith<Color>(
                          (Set<MaterialState> states) =>
                              states.contains(MaterialState.pressed)
                                  ? const Color.fromARGB(255, 159, 218, 255)
                                  : const Color.fromARGB(255, 18, 117, 188),
                        ),
                        overlayColor: MaterialStateProperty.resolveWith<Color>(
                          (Set<MaterialState> states) =>
                              states.contains(MaterialState.hovered)
                                  ? const Color.fromARGB(255, 0, 156, 255)
                                  : Colors.transparent,
                        ),
                      ),
                      child: const Text(
                        "Let's work together!",
                        style: TextStyle(
                          letterSpacing: 1,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: CustomColor.whitePrimary,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
