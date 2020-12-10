import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:tutor_app/widgets/bottom_navigation_bar.dart';

import 'constants.dart';
class OnBoardingPage extends StatefulWidget {
  @override
  _OnBoardingPageState createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  final introKey = GlobalKey<IntroductionScreenState>();

  void _onIntroEnd(context) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => BottomNav()),
    );
  }

  Widget _buildImage(String assetName) {
    return Image.asset('assets/images/$assetName.png', fit: BoxFit.cover,);
  }

  @override
  Widget build(BuildContext context) {
    const bodyStyle = TextStyle(fontSize: 19.0);
    const pageDecoration = const PageDecoration(
      titleTextStyle: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700,color:KTextColor),
      bodyTextStyle: bodyStyle,
      descriptionPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      pageColor: Colors.white,
      imagePadding: EdgeInsets.zero,
    );

    return IntroductionScreen(
      key: introKey,
      pages: [
        PageViewModel(
          title: "Easy To Find",
          body:
          "Lorem ipsum dolor sit amet, consetetur"
           "sadipscing elitr, sed diam nonumy"
              "eirmod tempor invidunt ut labore et"
              " dolore",
          image: _buildImage('onBoardOne'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Easy To Find",
          body:
          "Lorem ipsum dolor sit amet, consetetur"
              "sadipscing elitr, sed diam nonumy"
              "eirmod tempor invidunt ut labore et"
              " dolore",
          image: _buildImage('onBoardTwo'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Easy To Find",
          body:
          "Lorem ipsum dolor sit amet, consetetur"
              "sadipscing elitr, sed diam nonumy"
              "eirmod tempor invidunt ut labore et"
              " dolore",
          image: _buildImage('onBoardThree'),
          decoration: pageDecoration,
        ),

      ],
      onDone: () => _onIntroEnd(context),
      //onSkip: () => _onIntroEnd(context), // You can override onSkip callback
      showSkipButton: true,
      skipFlex: 0,
      nextFlex: 0,
      skip:  FlatButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18.0),
        ),
        color: KButtonColor,
        textColor: Colors.white,
        padding: EdgeInsets.all(8.0),
        onPressed: () {
          _onIntroEnd(context);
        },
        child: Text(
          "Skip",
          style: TextStyle(
              fontWeight: FontWeight.w600
          ),
        ),
      ),
      next: const Icon(Icons.arrow_forward,color: KButtonColor,),
      done: FlatButton(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18.0),
            ),
        color: KButtonColor,
        textColor: Colors.white,
        padding: EdgeInsets.all(8.0),
        onPressed: () {
          _onIntroEnd(context);
        },
        child: Text(
          "Done",
          style: TextStyle(
            fontWeight: FontWeight.w600
          ),
        ),
      ),
      dotsDecorator: const DotsDecorator(
        activeColor: KButtonColor,
        size: Size(10.0, 10.0),
        color: Color(0xFFBDBDBD),
        activeSize: Size(22.0, 10.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
    );
  }
}
