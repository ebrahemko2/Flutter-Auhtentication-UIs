import 'package:flutter/material.dart';
import 'package:authentication_screens/ui/constants.dart';
import 'package:authentication_screens/ui/screens/sign_in_screen.dart';

class WelcomeScreen extends StatelessWidget {
  static const String id = '/';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(builder: (context, constraints) {
        final double screenHeight = constraints.maxHeight;
        return Padding(
          padding: EdgeInsets.all(screenHeight * 0.05),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                child: Image.asset('assets/images/people.png'),
                flex: 10,
              ),
              Spacer(
                flex: 1,
              ),
              Text('Enterprise team collaboration.',
                  style: TextStyle(
                    fontSize: 0.045 * screenHeight,
                    fontWeight: FontWeight.bold,
                    height: 1.5,
                  ),
                  textAlign: TextAlign.center),
              Spacer(
                flex: 1,
              ),
              Text(
                'Bring together your files, your tools, projects and people. including a new mobile and desktop application.',
                style: TextStyle(
                  color: kSecondaryTextColor,
                  fontSize: screenHeight * 0.025,
                  height: 1.5,
                ),
                textAlign: TextAlign.center,
              ),
              Spacer(
                flex: 1,
              ),
              Flexible(
                flex: 10,
                fit: FlexFit.tight,
                child: Row(
                  children: [
                    Expanded(
                      child: Stack(
                        children: [
                          Align(
                            alignment: Alignment.bottomRight,
                            child: FractionallySizedBox(
                              widthFactor: 0.55,
                              child: RaisedButton(
                                onPressed: () {
                                  Navigator.pushNamed(context, SignInScreen.id);
                                },
                                color: kWhiteButtonTextColor,
                                textColor: Colors.white,
                                child: Text(
                                  'Sign In',
                                  style: TextStyle(
                                    fontSize: screenHeight * 0.02,
                                  ),
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(15),
                                    bottomRight: Radius.circular(15),
                                  ),
                                ),
                                padding: kButtonPadding,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: FractionallySizedBox(
                              widthFactor: 0.5,
                              child: RaisedButton(
                                onPressed: () {},
                                color: Colors.white,
                                textColor: Color(0xFF2B2931),
                                child: Text(
                                  'Register',
                                  style: TextStyle(
                                    fontSize: screenHeight * 0.02,
                                  ),
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                padding: kButtonPadding,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}
