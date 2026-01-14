import 'package:flutter/material.dart';

class Welcomescreen extends StatelessWidget {
  const Welcomescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: Image.network("https://shorturl.at/nOWPW",
        fit: BoxFit.fill,),

      ),
    );
  }
}