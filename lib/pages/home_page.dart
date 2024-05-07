import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/widgets/landing.dart';
import 'package:my_portfolio/widgets/skills_page.dart';
import '../widgets/contact_section.dart';
import '../widgets/footer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final scrollController = ScrollController();
  final List<GlobalKey> navbarKeys = List.generate(4, (index) => GlobalKey());

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          controller: scrollController,
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              SizedBox(key: navbarKeys.first),
              const Landing(),
              Container(
                padding: const EdgeInsets.fromLTRB(25, 40, 25, 60),
                margin: const EdgeInsets.symmetric(vertical: 100),
                color: CustomColor.whitePrimary,
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // title

                    Text(
                      "Skills and Tools I Use",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        color: CustomColor.scaffoldBg,
                      ),
                    ),
                    SizedBox(height: 80),

                    SkillsPage(),
                  ],
                ),
              ),

              const SizedBox(height: 30),

              const ContactSection(),

              const SizedBox(height: 30),

              // FOOTER
              const Footer(),
            ],
          ),
        ),
      );
    });
  }

  void scrollToSection(int navIndex) {
    if (navIndex == 4) {
      return;
    }

    final key = navbarKeys[navIndex];
    Scrollable.ensureVisible(
      key.currentContext!,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }
}
