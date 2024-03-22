import 'package:evo_finder/common/values/constants.dart';
import 'package:evo_finder/pages/application/widgets/application_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ApplicationPage extends StatefulWidget {
  const ApplicationPage({super.key});

  @override
  State<ApplicationPage> createState() => _ApplicationPageState();
}

class _ApplicationPageState extends State<ApplicationPage> {
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          body: buildPage(_index),
          bottomNavigationBar: Container(
            width: 375.w,
            height: 58.h,
            decoration: BoxDecoration(
              color: AppColors.primaryElement,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25.h),
                  topRight: Radius.circular(20.h)),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  blurRadius: 0.8,
                  spreadRadius: 0.4,
                ),
              ],
            ),
            child: BottomNavigationBar(
              selectedItemColor: AppColors.primaryElement,
              unselectedItemColor: AppColors.primaryFourthElementText,
              showSelectedLabels: false,
              showUnselectedLabels: false,
              type: BottomNavigationBarType.fixed,
              currentIndex: _index,
              onTap: (value) {
                setState(() {
                  _index = value;
                });
              },
              elevation: 0,
              items: [
                BottomNavigationBarItem(
                  label: "home",
                  activeIcon: SizedBox(
                    width: 15.w,
                    child: Image.asset(
                      "assets/icons/home.png",
                      color: AppColors.primaryElement,
                    ),
                  ),
                  icon: SizedBox(
                    width: 15.w,
                    height: 15.w,
                    child: Image.asset("assets/icons/home.png"),
                  ),
                ),
                BottomNavigationBarItem(
                  label: "search",
                  activeIcon: SizedBox(
                    width: 15.w,
                    child: Image.asset(
                      "assets/icons/search2.png",
                      color: AppColors.primaryElement,
                    ),
                  ),
                  icon: SizedBox(
                    width: 15.w,
                    height: 15.w,
                    child: Image.asset("assets/icons/search2.png"),
                  ),
                ),
                BottomNavigationBarItem(
                  label: "search",
                  activeIcon: SizedBox(
                    width: 15.w,
                    child: Image.asset(
                      "assets/icons/map.png",
                      color: AppColors.primaryElement,
                    ),
                  ),
                  icon: SizedBox(
                    width: 15.w,
                    height: 15.w,
                    child: Image.asset(
                      "assets/icons/map.png",
                      color: AppColors.primaryFourthElementText,
                    ),
                  ),
                ),
                BottomNavigationBarItem(
                  label: "search",
                  activeIcon: SizedBox(
                    width: 15.w,
                    child: Image.asset(
                      "assets/icons/message-circle.png",
                      color: AppColors.primaryElement,
                    ),
                  ),
                  icon: SizedBox(
                    width: 15.w,
                    height: 15.w,
                    child: Image.asset("assets/icons/message-circle.png"),
                  ),
                ),
                BottomNavigationBarItem(
                  label: "profile",
                  activeIcon: SizedBox(
                    width: 15.w,
                    child: Image.asset(
                      "assets/icons/person.png",
                      color: AppColors.primaryElement,
                    ),
                  ),
                  icon: SizedBox(
                    width: 15.w,
                    height: 15.w,
                    child: Image.asset("assets/icons/person2.png"),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
