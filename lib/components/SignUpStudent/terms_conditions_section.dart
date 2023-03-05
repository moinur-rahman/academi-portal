import 'package:flutter/material.dart';

class TermsConditionsSection extends StatelessWidget {
  const TermsConditionsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 260,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "By creating account you agree to our", // Terms of Service and Privacy Policy.
            style: TextStyle(
              color: Colors.black,
              fontSize: 15,
              fontWeight: FontWeight.w500,
            ),
            textAlign: TextAlign.center,
          ),
          Row(
            children: [
              TextButton(
                  onPressed: () {}, child: const Text("Terms of Service")),
              const Text(
                "and",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.center,
              ),
              TextButton(onPressed: () {}, child: const Text("Privacy Policy")),
              const Text("."),
            ],
          ),
        ],
      ),
    );
  }
}
