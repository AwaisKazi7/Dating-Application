import 'package:dating_app_ubaid/common/common_button.dart';
import 'package:dating_app_ubaid/common/common_colors.dart';
import 'package:dating_app_ubaid/common/common_text.dart';
import 'package:dating_app_ubaid/common/common_text_style.dart';
import 'package:flutter/material.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 600,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/getstarted_image.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const CommonText(
            text: 'Find Partner \nShould be easy',
            textAlign: TextAlign.start,
            style: CommonTextStyle.getstartedt1,
            maxLines: 2,
          ),
          CommonButton(
            width: 345.59,
            height: 54.33,
            borderRadius: 5,
            backgroundColor: CommonColors.getstartedbt,
            onPressed: () {},
            text: 'Start',
            textColor: CommonColors.primaryColor,
          ),
        ],
      ),
    );
  }
}

