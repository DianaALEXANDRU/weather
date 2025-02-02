import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weather/welcome.dart';

import 'models/constants.dart';

class GetStarted extends StatefulWidget {
  const GetStarted({Key? key}) : super(key: key);

  @override
  State<GetStarted> createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    Constants myConstants = Constants();

    return Scaffold(
        body: Container(
      width: size.width,
      height: size.height,
      color: myConstants.primaryColor.withOpacity(.5),
      child: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset('assets/get-started.png'),
          const SizedBox(
            height: 30,
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => const Welcome()));
            },
            child: Container(
              height: 50,
              width: size.width * 0.7,
              decoration: BoxDecoration(
                color: myConstants.primaryColor,
                borderRadius: const BorderRadius.all(Radius.circular(10)),
              ),
              child: const Center(
                child: Text(
                  'Get started',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ),
          ),
        ],
      )),
    ));
  }
}
