import 'package:flutter/material.dart';
import 'package:authentication_screens/ui/constants.dart';
import 'package:authentication_screens/ui/widgets/dark_text_field.dart';
import 'package:authentication_screens/ui/screens/welcome_screen.dart';

class SignInScreen extends StatefulWidget {
  static const String id = '/sign_in_screen';

  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  bool isPasswordHidden = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            final screenHeight = constraints.maxHeight;
            return Container(
              color: kPrimaryColor,
              padding: EdgeInsets.all(screenHeight * 0.05),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Let's sign you in.",
                    style: TextStyle(
                      fontSize: 0.045 * screenHeight,
                      fontWeight: FontWeight.bold,
                      height: 1.8,
                    ),
                  ),
                  Text(
                    'Welcome back.',
                    style: TextStyle(
                      fontSize: 0.04 * screenHeight,
                      height: 1.5,
                    ),
                  ),
                  Text(
                    "You've been missed!",
                    style: TextStyle(
                      fontSize: 0.04 * screenHeight,
                    ),
                  ),
                  Spacer(
                    flex: 4,
                  ),
                  DarkTextField(
                    screenHeight: screenHeight,
                    keyboardType: TextInputType.emailAddress,
                    hintTextContent: 'Enter Your Email',
                  ),
                  Spacer(
                    flex: 1,
                  ),
                  DarkTextField(
                    screenHeight: screenHeight,
                    keyboardType: TextInputType.visiblePassword,
                    hintTextContent: 'Password',
                    textFieldIcon: IconButton(
                      icon: Icon(
                        isPasswordHidden
                            ? Icons.visibility
                            : Icons.visibility_off,
                        color: Colors.grey,
                        size: 20,
                      ),
                      onPressed: () {
                        setState(() => isPasswordHidden = !isPasswordHidden);
                      },
                    ),
                    isHidden: isPasswordHidden,
                  ),
                  Spacer(
                    flex: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't Have an account?",
                        style: TextStyle(
                          color: kSecondaryTextColor,
                          fontSize: screenHeight * 0.025,
                        ),
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, WelcomeScreen.id);
                          },
                          child: Text(
                            'Register',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: screenHeight * 0.025,
                            ),
                          )),
                    ],
                  ),
                  Container(
                    width: double.infinity,
                    child: RaisedButton(
                      onPressed: () {},
                      child: Text(
                        'Sign In',
                        style: TextStyle(
                          fontSize: screenHeight * 0.025,
                        ),
                      ),
                      color: Colors.white,
                      textColor: kWhiteButtonTextColor,
                      padding: kButtonPadding,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
      appBar: AppBar(
        elevation: 0,
      ),
    );
  }
}
