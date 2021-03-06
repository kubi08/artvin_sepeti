import 'package:artvin_sepeti/components/already_have_an_account_acheck.dart';
import 'package:artvin_sepeti/components/rounded_button.dart';
import 'package:artvin_sepeti/components/rounded_input_field.dart';
import 'package:artvin_sepeti/components/rounded_password_field.dart';
import 'package:artvin_sepeti/config/export_config.dart';
import 'package:artvin_sepeti/pages/Login/login_screen.dart';
import 'package:artvin_sepeti/pages/Signup/components/background.dart';
import 'package:artvin_sepeti/pages/Signup/components/social_icon.dart';
import 'package:artvin_sepeti/screens/main_screen.dart';
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
            SizedBox(height: size.height * 0.10),
            Text("artvin",style: TextStyle(fontFamily: 'mainFont',fontSize:size.width * 0.25,color:primaryColor),),
            Text("sepeti",style: TextStyle(fontFamily: 'secondFont',fontSize:size.width * 0.15,color:primaryColor,height: 0.8),),
            SizedBox(height: size.height * 0.02),
            RoundedInputField(
              hintText: "Email",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            RoundedButton(
              text: "KAYIT OL",
              press: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => MainScreen(),));
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
