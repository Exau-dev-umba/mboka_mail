import 'package:application_gmail_clone/app/MonApplication.dart';
import 'package:flutter/material.dart';


class Splashscreen extends StatefulWidget {
  const Splashscreen({Key? key}) : super(key: key);

  @override
  State<Splashscreen> createState() => _SplashscreenState();

}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => MonApplication()),
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: _chargemnt(),
    );
  }
}


Widget _chargemnt(){
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Expanded(
          child: Image.asset('assets/gmail.png')
      )
    ],
  );
}




