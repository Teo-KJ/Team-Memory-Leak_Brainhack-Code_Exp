import 'package:flutter/material.dart';
import 'package:flutter_application/views/login/components/background.dart';
import 'package:flutter_application/views/login/components/acc_check.dart';
import 'package:flutter_application/views/login/components/rounded_button.dart';
import 'package:flutter_application/views/login/components/rounded_input_field.dart';
import 'package:flutter_application/views/login/components/rounded_password_field.dart';
import 'package:flutter_application/views/login/components/divider.dart';
import 'package:flutter_application/views/login/components/icons.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: size.height * 0.03),
            Image.asset(
              "assets/logo.PNG",
              width: size.width * 0.6,
            ),
            SizedBox(height: size.height * 0.03),
            RoundedInputField(
              hintText: "Your Email",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            RoundedButton(
              text: "LOGIN",
              press: () {},
            ),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      //return SignUpScreen();
                    },
                  ),
                );
              },
            ),
            OrDivider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SocialIcon(
                  iconSrc: "assets/fbk.PNG",
                  press: () {},
                ),
                SocialIcon(
                  iconSrc: "assets/google.png",
                  press: () {},
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
