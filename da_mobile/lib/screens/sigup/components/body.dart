import 'package:da_mobile/components/already_have_an_account_acheck.dart';
import 'package:da_mobile/components/rounded_button.dart';
import 'package:da_mobile/components/rounded_input_field.dart';
import 'package:da_mobile/components/rounded_name.dart';
import 'package:da_mobile/components/rounded_numberphone.dart';
import 'package:da_mobile/components/rounded_password_field.dart';
import 'package:da_mobile/screens/login/components/background.dart';
import 'package:da_mobile/screens/login/login_screen.dart';
import 'package:da_mobile/screens/sigup/components/social_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'or_divider.dart';


class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "SIGNUP",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.03),
            SvgPicture.asset(
              "assets/icons/signup.svg",
              height: size.height * 0.35,
            ),
            RoundedInputFieldname(
               hintText: "Name",
               onChanged: (value) {},
             ),
             RoundedInputFieldphone(
                hintText: "Numberphone",
                onChanged: (value) {},
             ),
              RoundedInputField(
               hintText: "Your Email",
               onChanged: (value) {},
             ),
             RoundedPasswordField(
             onChanged: (value) {},
             ),
             RoundedButton(
               text: "SIGNUP",
               press: () {
                 Navigator.push(
                  context,
                   MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                     },
                   ),
                 );
               },
             ),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
              login: false,
              press: () {
               Navigator.push(
                  context,
                   MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                     },
                   ),
                 );
              },
             ),
             OrDivider(),
             Row(
              mainAxisAlignment: MainAxisAlignment.center,
               children: <Widget>[
                 SocalIcon(
                   iconSrc: "assets/icons/facebook.svg",
                  press: () {},
                ),
                 SocalIcon(
                  iconSrc: "assets/icons/twitter.svg",
                  press: () {},
                 ),
                 SocalIcon(
                   iconSrc: "assets/icons/google-plus.svg",
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
