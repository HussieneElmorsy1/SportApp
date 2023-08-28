import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:news_app/Screens/HomeScreen.dart';
import 'test.dart';
// import 'package:sports_app/screens/test.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

final List<String> imageUrls = [
  'https://picsum.photos/200/300?image=1',
  'https://picsum.photos/200/300?image=2',
  'https://picsum.photos/200/300?image=2',
];

final CarouselController _controller1 = CarouselController();

int active_page = 0;

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        CarouselSlider(
            items: [
              Container(
                width: MediaQuery.of(context).size.width,
                color: Colors.red,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                color: Colors.yellow,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                color: Colors.green,
              ),
            ],
            // items: imageUrls
            //     .map((e) => Image.network(
            //           e,
            //           width: double.infinity,
            //           fit: BoxFit.fill,
            //         ))
            //     .toList(),
            carouselController: _controller1,
            options: CarouselOptions(
              height: MediaQuery.of(context).size.height,
              aspectRatio: 16 / 9,
              viewportFraction: 1,
              initialPage: 0,
              enableInfiniteScroll: true,
              reverse: false,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 3),
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              autoPlayCurve: Curves.fastOutSlowIn,
              enlargeCenterPage: true,
              enlargeFactor: 0.3,
              onPageChanged: (index, reason) => {
                active_page = index,
                setState(
                  () {},
                ),
              },
              scrollDirection: Axis.horizontal,
            )),
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 20),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute<void>(
                          builder: (BuildContext context) => HomeScreen()),
                    );
                  },
                  child: Text('Skip'),
                ),
              ),
              AnimatedSmoothIndicator(
                activeIndex: active_page,
                count: 3,
                onDotClicked: (index) => {
                  active_page = index,
                  setState(
                    () {
                      _controller1.animateToPage(active_page);
                    },
                  ),
                },
              ),
              SizedBox(
                height: 40,
              )
            ],
          ),
        ),
      ]),
    );
  }
}
