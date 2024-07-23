import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hex_color/flutter_hex_color.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';

import '../../widgets/skip_button.dart';

class OnboardingCarousel extends StatefulWidget {
  @override
  _OnboardingCarouselState createState() => _OnboardingCarouselState();
}
class _OnboardingCarouselState extends State<OnboardingCarousel> {

  int _currentIndex = 0;

  final List<String> _imageList = [
    'assets/shutterstock_1098437840.png',
    'assets/shutterstock_14728513.png',
    'assets/shutterstock_2456454117.png',
  ];

  final List<String> _titleList = [
    'Welcome to Boost',
    'Organize and Manage with Ease',
    'Engage and Inspire',
  ];

  final List<String> _textList = [
    'Empower your training journey with Boost. Create your profile, manage courses, and access a wide range of teaching resources. Whether you are a trainer or professor, our app is designed to enhance your teaching experience and help you connect with your students more effectively.',
    'Stay on top of your schedule with our intuitive calendar and course management features. Easily check course details, track your training sessions, and plan ahead. Boost makes it simple to stay organized, so you can focus on what you do best: teaching.',
    'Create interactive student activities like flashcards and quizzes to make learning fun and engaging. Explore our course material gallery to find the resources you need. Boost provides all the tools you need to inspire your students and enhance their learning experience.',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: HexColor('#EBF0F8'),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Stack(
            children: [
              CarouselSlider.builder(
                itemCount: _imageList.length,
                itemBuilder: (context, index, realIndex) {
                  return Image.asset(
                    _imageList[index],
                    fit: BoxFit.cover,
                    width: 500,
                    height: 550,
                  );
                },
                options: CarouselOptions(
                  height: 550.0,
                  autoPlay: true,
                  viewportFraction: 1.0,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _currentIndex = index;
                    });
                  },
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  height: 150,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: [
                        Colors.blue.withOpacity(1.0),
                        Colors.blue.withOpacity(0.0),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 16.0,
                left: 0.0,
                right: 0.0,
                child: Center(
                  child: DotsIndicator(
                    dotsCount: _imageList.length,
                    position: _currentIndex,
                    decorator: DotsDecorator(
                      color: Colors.grey,
                      activeColor: Colors.blue,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 15),
          Text(
            _titleList[_currentIndex],
            style: TextStyle(fontSize: 18,
            color: HexColor('#005095'),
            fontFamily: 'Roboto',
            fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Text(
            _textList[_currentIndex],
            style: TextStyle(fontSize: 14,
            color: HexColor('#96A1B0'),
            fontFamily: 'Roboto'),
          ),
          SizedBox(height: 10),
          Row(
            children: [
              SkipButton(),
              Spacer(),
              Icon(Icons.arrow_right_alt_sharp, size: 48,)
            ],
          ),
        ],
      ),
    );

  }
}