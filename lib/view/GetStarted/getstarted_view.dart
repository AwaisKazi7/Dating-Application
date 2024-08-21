import 'package:dating_app/common/common_button.dart';
import 'package:dating_app/common/common_colors.dart';
import 'package:dating_app/common/common_text.dart';
import 'package:dating_app/common/common_text_style.dart';
import 'package:flutter/material.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 4,
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/getstarted_image.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 1,),
            const CommonText(
              text: 'Finding Partner \nShould be easy',
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
            const SizedBox(height: 6),
          ],
        ),
      ),
    );
  }
}
