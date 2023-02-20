import 'package:flutter/material.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 120,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                child: Icon(
                  Icons.phone,
                  color: Color(0xff349053),
                  size: 40.0,
                  semanticLabel: 'Text to announce in accessibility modes',
                ),
              ),
              SizedBox(
                child: Icon(
                  Icons.open_with_outlined,
                  color: Color(0xff349053),
                  size: 40.0,
                  semanticLabel: 'Text to announce in accessibility modes',
                ),
              ),
              SizedBox(
                child: Icon(
                  Icons.update_disabled_outlined,
                  color: Color(0xff349053),
                  size: 40.0,
                  semanticLabel: 'Text to announce in accessibility modes',
                ),
              ),
              SizedBox(
                child: Icon(
                  Icons.live_help_outlined,
                  color: Color(0xff349053),
                  size: 40.0,
                  semanticLabel: 'Text to announce in accessibility modes',
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                child: Icon(
                  Icons.contact_mail_outlined,
                  color: Color(0xff349053),
                  size: 40.0,
                  semanticLabel: 'Text to announce in accessibility modes',
                ),
              ),
              SizedBox(
                child: Icon(
                  Icons.settings_accessibility_outlined,
                  color: Color(0xff349053),
                  size: 40.0,
                  semanticLabel: 'Text to announce in accessibility modes',
                ),
              ),
              SizedBox(
                child: Icon(
                  Icons.chat_bubble_outline,
                  color: Color(0xff349053),
                  size: 40.0,
                  semanticLabel: 'Text to announce in accessibility modes',
                ),
              ),
              SizedBox(
                child: Icon(
                  Icons.other_houses_rounded,
                  color: Color(0xff349053),
                  size: 40.0,
                  semanticLabel: 'Text to announce in accessibility modes',
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
