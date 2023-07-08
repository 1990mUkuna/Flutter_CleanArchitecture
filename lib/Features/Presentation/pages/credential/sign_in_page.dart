import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/Features/Presentation/pages/credential/sign_up_page.dart';
import 'package:flutter_clean_architecture/Features/Presentation/pages/home/home_page.dart';
import 'package:flutter_clean_architecture/Features/Presentation/widgets/button_container_widget.dart';
import 'package:flutter_clean_architecture/Features/Presentation/widgets/form_container_widget.dart';
import 'package:flutter_clean_architecture/const.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroundColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              child: Container(),
              flex: 2,
            ),
            const Center(child: Text("Logo")),
            sizeVer(30),
            const FormContainerWidget(
              hintText: "Email",
            ),
            sizeVer(15),
            const FormContainerWidget(
              hintText: "Password",
              isPasswordField: true,
            ),
            sizeVer(15),
            ButtonContainerWidget(
              color: blueColor,
              text: "Sign In",
              onTapListener: () {
                MaterialPageRoute(builder: (context) => const HomePage());
              },
            ),
            Flexible(
              flex: 2,
              child: Container(),
            ),
            const Divider(
              color: secondaryColor,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Don't have and account? ",
                  style: TextStyle(color: primaryColor),
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, PageConst.signUpPage);
                  },
                  child: const Text(
                    "Sign Up.",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: primaryColor),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
