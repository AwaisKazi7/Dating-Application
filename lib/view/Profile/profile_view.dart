import 'package:dating_app/common/common_button.dart';
import 'package:dating_app/common/common_colors.dart';
import 'package:dating_app/common/common_text.dart';
import 'package:dating_app/common/common_text_style.dart';
import 'package:dating_app/common/common_textform.dart';
import 'package:dating_app/view/Common_widget/bottomnavbar.dart';
import 'package:dating_app/view/Profile/profile_widget/dotted_container.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  final TextEditingController _controller = TextEditingController();
  final int currentIndex = 0;

  ProfileScreen({super.key});

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
      backgroundColor: CommonColors.searchColor,
      body: Padding(
        padding: const EdgeInsets.only(top: 40.73, left: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(
              children: [
                CircleAvatar(
                  backgroundColor: CommonColors.profileColor,
                  child: Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                ),
                SizedBox(width: 100.0),
                CommonText(
                  style: CommonTextStyle.logintextStyle,
                  text: 'Profile',
                ),
              ],
            ),
            const SizedBox(height: 8.0),
            const CommonText(
              style: CommonTextStyle.getstartedt2,
              text: 'Profile details',
            ),
            const SizedBox(height: 8.0),
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                DottedBorderContainer(
                  width: 110.32,
                  height: 178.15,
                  borderColor: CommonColors.profileColor,
                  borderWidth: 3.0,
                  dotSpacing: 2.0,
                  borderRadius: 5.0,
                  child: Icon(
                    Icons.add,
                    color: CommonColors.profileColor,
                    size: 60.0,
                  ),
                ),
                SizedBox(width: 12),
                DottedBorderContainer(
                  width: 110.32,
                  height: 178.15,
                  borderColor: CommonColors.profileColor,
                  borderWidth: 3.0,
                  dotSpacing: 2.0,
                  borderRadius: 5.0,
                  child: Icon(
                    Icons.add,
                    color: CommonColors.profileColor,
                    size: 60.0,
                  ),
                ),
                SizedBox(width: 12),
                DottedBorderContainer(
                  width: 110.32,
                  height: 178.15,
                  borderColor: CommonColors.profileColor,
                  borderWidth: 3.0,
                  dotSpacing: 2.0,
                  borderRadius: 5,
                  child: Icon(
                    Icons.add,
                    color: CommonColors.profileColor,
                    size: 60.0,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 14,
            ),
            Column(
              children: <Widget>[
                Container(
                  height: 50.98,
                  width: 355.72,
                  decoration: BoxDecoration(
                    color: CommonColors.searchColor,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: const Offset(0, 1),
                      ),
                    ],
                  ),
                  child: const Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 16.0),
                      child: CommonText(
                        text: "Othmane Mdidet",
                        style: CommonTextStyle.logintextStyle,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            //
            Column(
              children: <Widget>[
                Container(
                  height: 160.92,
                  width: 355.72,
                  decoration: BoxDecoration(
                    color: CommonColors.searchColor,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: const Offset(0, 1),
                      ),
                    ],
                  ),
                  child: const Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 16.0),
                      child: CommonText(
                        text:
                            "Passionate UI/UX designer based \nin Morocco, specializing in remote \nfreelance work",
                        style: CommonTextStyle.logintextStyle,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            Column(
              children: <Widget>[
                Container(
                  height: 50.98,
                  width: 355.72,
                  decoration: BoxDecoration(
                    color: CommonColors.searchColor,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: const Offset(0, 1),
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      const Padding(
                        padding: EdgeInsets.only(left: 16.0),
                        child: CommonText(
                          text: "Location",
                          style: CommonTextStyle.logintextStyle,
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 123, top: 12.0),
                          child: CommonTextform(
                            hintText: "Marrakech",
                            controller: _controller,
                            hintStyle: CommonTextStyle.logintextStyle.copyWith(
                              color: CommonColors.cardext3color,
                            ),
                            borderColor: Colors.transparent,
                            fillColor: Colors.transparent,
                            borderRadius: 0,
                            centerText: false,
                          ),
                        ),
                      ),
                      const Icon(
                        Icons.arrow_forward,
                        color: CommonColors.primaryColor,
                      ),
                    ],
                  ),
                  //
                ),
              ],
            ),
            const SizedBox(
              height: 26,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 26.0),
              child: CommonButton(
                text: 'Confirm',
                width: 300.59,
                height: 50.98,
                borderRadius: 5,
                onPressed: () {},
                textStyle: CommonTextStyle.homescreenhead,
              ),
            ),
            const SizedBox(
              height: 14,
            ),
            CustomBottomNavBar(
              currentIndex: currentIndex,
              onTap: (index) => _onItemTapped(index, context),
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
