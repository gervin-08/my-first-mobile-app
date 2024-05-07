import 'package:flutter/material.dart';
import '../constants/colors.dart';
import '../constants/skill_items.dart';

class SkillsPage extends StatefulWidget {
  const SkillsPage({super.key});

  @override
  _SkillsPageState createState() => _SkillsPageState();
}

class _SkillsPageState extends State<SkillsPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );

    _animation = CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeIn,
    );

    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(
        maxWidth: 500.0,
      ),
      child: Column(
        children: [
          // platforms
          for (int i = 0; i < platformItems.length; i++)
            FadeTransition(
              opacity: _animation,
              child: Container(
                margin: const EdgeInsets.only(bottom: 10.0),
                width: double.maxFinite,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 18, 117, 188),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: ListTile(
                  contentPadding: const EdgeInsets.symmetric(
                    vertical: 10.0,
                    horizontal: 20.0,
                  ),
                  leading: Image.asset(
                    platformItems[i]["img"],
                    width: 28.0,
                  ),
                  title: Text(
                    platformItems[i]["title"],
                    style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: CustomColor.whitePrimary,
                    ),
                  ),
                ),
              ),
            ),
          const SizedBox(height: 50),

          // skills
          Wrap(
            spacing: 10.0,
            runSpacing: 10.0,
            alignment: WrapAlignment.center,
            children: [
              for (int i = 0; i < skillItems.length; i++)
                FadeTransition(
                  opacity: _animation,
                  child: Chip(
                    padding: const EdgeInsets.symmetric(
                      vertical: 12.0,
                      horizontal: 16.0,
                    ),
                    backgroundColor: const Color.fromARGB(255, 18, 117, 188),
                    label: Text(
                      skillItems[i]["title"],
                      style: const TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                        color: CustomColor.whitePrimary,
                      ),
                    ),
                    avatar: Image.asset(skillItems[i]["img"]),
                  ),
                ),
            ],
          )
        ],
      ),
    );
  }
}
