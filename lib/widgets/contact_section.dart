import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/widgets/custom_text_field.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:bootstrap_icons/bootstrap_icons.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(25, 1, 25, 50),
      color: Colors.black,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              // title
              const Text(
                "Let's turn those ideas into reality!",
                style: TextStyle(
                  fontSize: 24,
                  color: CustomColor.whitePrimary,
                ),
              ),

              const SizedBox(height: 100),
              ConstrainedBox(
                constraints: const BoxConstraints(
                  maxWidth: 300,
                  maxHeight: 125,
                ),
                child: buildNameEmailFieldMobile(),
              ),
              const SizedBox(height: 15),
              // message
              ConstrainedBox(
                constraints: const BoxConstraints(
                  maxWidth: 300,
                ),
                child: const CustomTextField(
                  hintText: "Your message",
                  maxLines: 5,
                ),
              ),
              const SizedBox(height: 20),
              // send button
              ConstrainedBox(
                constraints: const BoxConstraints(
                  maxWidth: 300,
                ),
                child: SizedBox(
                  width: double.maxFinite,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                        const Color.fromARGB(255, 18, 117, 188),
                      ),
                    ),
                    onPressed: () {
                      _sendMessage(context);
                    },
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Send",
                          style: TextStyle(
                            letterSpacing: 1,
                            fontWeight: FontWeight.w600,
                            fontSize: 15,
                            color: CustomColor.whitePrimary,
                          ),
                        ),
                        SizedBox(width: 10),
                        Icon(
                          BootstrapIcons.send,
                          color: CustomColor.whitePrimary,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30),

              ConstrainedBox(
                constraints: const BoxConstraints(
                  maxWidth: 300,
                ),
                child: const Divider(),
              ),
              const SizedBox(height: 15),

              // icon button links
              Wrap(
                spacing: 12,
                runSpacing: 12,
                alignment: WrapAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      _launchURL("https://github.com/iEatPoohC");
                    },
                    child: Image.asset(
                      "assets/github.png",
                      width: 40,
                      height: 40,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      _launchURL(
                          "https://www.linkedin.com/in/gervin-paul-nicdao-2929822b1/");
                    },
                    child: Image.asset(
                      "assets/linkedin.png",
                      width: 40,
                      height: 40,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      _launchURL("https://www.facebook.com/");
                    },
                    child: Image.asset(
                      "assets/facebook.png",
                      width: 40,
                      height: 40,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      _launchURL("https://www.instagram.com/gervin___/");
                    },
                    child: Image.asset(
                      "assets/instagram.png",
                      width: 40,
                      height: 40,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Column buildNameEmailFieldMobile() {
    return const Column(
      children: [
        // name
        CustomTextField(
          hintText: "Your name",
        ),
        SizedBox(height: 16),
        // email
        CustomTextField(
          hintText: "Your email",
        ),
      ],
    );
  }

  void _sendMessage(BuildContext context) {
    // Implement your logic here to send the message
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Message Sent'),
        duration: Duration(seconds: 2),
      ),
    );
  }

  void _launchURL(String url) async {
    try {
      await launch(url);
    } catch (e) {
      print("Error launching URL: $e");
    }
  }
}
