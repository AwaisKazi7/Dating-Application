import 'package:flutter/material.dart';
import 'package:dating_app/common/common_button.dart';
import 'package:dating_app/common/common_colors.dart';
import 'package:dating_app/common/common_text.dart';
import 'package:dating_app/common/common_text_style.dart';
import '../Common_widget/bottomnavbar.dart';

class LoginScreen extends StatelessWidget {

final int currentIndex = 0;

const LoginScreen({super.key});
  void _onItemTapped(int index, BuildContext context) {
    // Handle navigation based on the index
    if (index != currentIndex) {
      // Navigate to the respective screen based on index
      // Navigator.pushReplacementNamed(context, routeName);
    }
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 540,
            width: 395,
            child: Image.asset(
              'assets/images/login_image.png',
              fit: BoxFit.cover,
            ),
          ),
          const CommonText(
            text:
                'By clicking "Log in", you agree with our Terms. \nLearn how we process your data in our Privacy \nPolicy and Cookies Policy.',
            textAlign: TextAlign.center,
            style: CommonTextStyle.logintextStyle,
            maxLines: 3,
          ),
          CommonButton(
            width: 345.59,
            height: 40.98,
            borderRadius: 5,
            backgroundColor: CommonColors.loginbt1Color,
            onPressed: () {},
            text: 'Log in With Phone Number',
            textStyle: CommonTextStyle.logintextStyle,
            textColor: Colors.black,
          ),
          const SizedBox(height: 4),
          CommonButton(
            width: 345.59,
            height: 40.98,
            borderRadius: 5,
            backgroundColor: CommonColors.loginbt2Color,
            onPressed: () {},
            text: 'Log in With Facebook',
            textStyle: CommonTextStyle.logintextStyle,
            textColor: Colors.black,
          ),
          const SizedBox(height: 4),
          CommonButton(
            width: 345.59,
            height: 40.98,
            borderRadius: 5,
            backgroundColor: CommonColors.loginbt3Color,
            onPressed: () {},
            text: 'Log in With Google',
            textStyle: CommonTextStyle.logintextStyle,
            textColor: Colors.black,
          ),
          const SizedBox(
            height: 4,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: CommonButton(
              width: 345.59,
              height: 40.98,
              borderRadius: 5,
              onPressed: () {},
              text: 'Trouble Logging in?',
              textStyle: CommonTextStyle.logintextStyle,
            ),
          ),
          // const SizedBox(height: 4,),
        ],
      ),
      bottomNavigationBar: CustomBottomNavBar(
        currentIndex: currentIndex,
        onTap: (index) => _onItemTapped(index, context),
      ),
    );
  }
}
