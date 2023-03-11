import 'package:flutter/material.dart';

class TermsConditionsSection extends StatelessWidget {
  const TermsConditionsSection({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SizedBox(
      width: width * 0.7,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "By creating account you agree to our", // Terms of Service and Privacy Policy.
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontSize: height * 0.02,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                  onPressed: () {},
                  child: Text(
                    "Terms of Service",
                    style: TextStyle(
                      fontSize: height * 0.02,
                      fontWeight: FontWeight.bold,
                    ),
                  )),
              Text(
                "and",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: height * 0.02,
                ),
              ),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    "Privacy Policy",
                    style: TextStyle(
                      fontSize: height * 0.02,
                      fontWeight: FontWeight.bold,
                    ),
                  )),
              Text("."),
            ],
          ),
        ],
      ),
    );
  }
}
