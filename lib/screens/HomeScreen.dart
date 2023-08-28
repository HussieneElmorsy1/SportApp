import 'package:flutter/material.dart';

import '../Genral/Functions/showDialog.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: Colors.black),
        child: Row(
          children: [
            Container(
              child: Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.5,
                    height: MediaQuery.of(context).size.height * 0.5,
                    // color: Colors.red,
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            shape: BoxShape.rectangle,
                            image: DecorationImage(
                                image: AssetImage(
                                  "assets/images/football.png",
                                ),
                                fit: BoxFit.fill),
                          ),
                          width: MediaQuery.of(context).size.width * 0.45,
                          height: MediaQuery.of(context).size.height * 0.45,
                          // child: Image.asset(
                          //   'assets/images/football.png',
                          //   fit: BoxFit.fill,
                          // ),
                        ),
                        Container(
                          padding: EdgeInsets.all(5),
                          child: Text(
                            "Football",
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.5,
                    height: MediaQuery.of(context).size.height * 0.5,
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            shape: BoxShape.rectangle,
                            image: DecorationImage(
                                image: AssetImage(
                                  "assets/images/cricket.png",
                                ),
                                fit: BoxFit.fill),
                          ),
                          width: MediaQuery.of(context).size.width * 0.45,
                          height: MediaQuery.of(context).size.height * 0.45,
                          // child: Image.asset(
                          //   'assets/images/football.png',
                          //   fit: BoxFit.fill,
                          // ),
                        ),
                        Container(
                          padding: EdgeInsets.all(5),
                          child: Text(
                            "Cricket",
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.5,
                    height: MediaQuery.of(context).size.height * 0.5,
                    // color: Colors.red,
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            shape: BoxShape.rectangle,
                            image: DecorationImage(
                                image: AssetImage(
                                  "assets/images/basketball.png",
                                ),
                                fit: BoxFit.fill),
                          ),
                          width: MediaQuery.of(context).size.width * 0.45,
                          height: MediaQuery.of(context).size.height * 0.45,
                          // child: Image.asset(
                          //   'assets/images/football.png',
                          //   fit: BoxFit.fill,
                          // ),
                        ),
                        Container(
                          padding: EdgeInsets.all(5),
                          child: Text(
                            "Basketball",
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.5,
                    height: MediaQuery.of(context).size.height * 0.5,
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            shape: BoxShape.rectangle,
                            image: DecorationImage(
                                image: AssetImage(
                                  "assets/images/tennis.png",
                                ),
                                fit: BoxFit.fill),
                          ),
                          width: MediaQuery.of(context).size.width * 0.45,
                          height: MediaQuery.of(context).size.height * 0.45,
                          // child: Image.asset(
                          //   'assets/images/football.png',
                          //   fit: BoxFit.fill,
                          // ),
                        ),
                        Container(
                          padding: EdgeInsets.all(5),
                          child: Text(
                            "Tennis",
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
