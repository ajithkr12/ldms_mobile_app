import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ldms_mobile_app/constants/app_colors.dart';
import 'package:ldms_mobile_app/custom_widgets/custom_icon_button.dart';
import 'package:ldms_mobile_app/custom_widgets/heading_subheading_widget.dart';
import 'package:ldms_mobile_app/custom_widgets/profile_picture_widget.dart';
import 'package:ldms_mobile_app/screens/add_devices/add_devices.dart';
import 'package:ldms_mobile_app/screens/home/home.dart';
import 'package:ldms_mobile_app/screens/order_history/order_history.dart';
import 'package:ldms_mobile_app/screens/settings/settings.dart';

class MainScreen extends StatefulWidget {
  MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final PageController pageController = PageController(initialPage: 0);
  final ValueNotifier<int> _selectedIndex = ValueNotifier<int>(0);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<int>(
      valueListenable: _selectedIndex,
      builder: (context, index, child) {
        return Scaffold(
          extendBody: true,
          body: PageView(
            controller: pageController,
            onPageChanged: (index) {
              _selectedIndex.value = index;
            },
            children: <Widget>[
              Home(),
              const AddDevices(),
              const OrderHistory(),
              Settings(),
            ],
          ),
          // floatingActionButtonLocation:
          //     FloatingActionButtonLocation.centerDocked,
          // floatingActionButton: Container(
          //   height: 56, // Custom height
          //   width: 56, // Custom width
          //   decoration: BoxDecoration(
          //     shape: BoxShape.circle,
          //     gradient: LinearGradient(
          //       colors: [Colors.blue, Colors.purple], // Gradient color
          //       begin: Alignment.topLeft,
          //       end: Alignment.bottomRight,
          //     ),
          //     boxShadow: [
          //       BoxShadow(
          //         color: Colors.black.withOpacity(0.3),
          //         blurRadius: 10,
          //         spreadRadius: 2,
          //         offset: Offset(0, 5),
          //       ),
          //     ],
          //   ),
          //   child: FloatingActionButton(
          //     onPressed: () {},
          //     backgroundColor:
          //         Colors.transparent, // To keep the gradient visible
          //     elevation: 0, // Remove default elevation
          //     child: Icon(Icons.add, size: 32, color: Colors.white),
          //   ),
          // ),
          bottomNavigationBar: BottomAppBar(
            height: 62,
            padding: EdgeInsets.all(0.0),
            shape: const CircularNotchedRectangle(),
            // notchMargin: 4.0,
            clipBehavior: Clip.antiAlias,
            child: SizedBox(
              height: kBottomNavigationBarHeight,
              child: BottomNavigationBar(
                iconSize: 24,
                type: BottomNavigationBarType.fixed,
                backgroundColor: AppColors.bottomAppBarBackgroundColor,
                currentIndex: index,
                showSelectedLabels: false,
                showUnselectedLabels: false,
                selectedIconTheme: const IconThemeData(opacity: 3, size: 28), // Ensures no extra highlight
                unselectedIconTheme: const IconThemeData(size: 24),
                selectedItemColor: AppColors.bottomAppBarIconActiveColor,
                unselectedItemColor: AppColors.bottomAppBarIconNormalColor,
                onTap: (index) {
                  _selectedIndex.value = index;
                  pageController.jumpToPage(index);
                },
                items: [
                  BottomNavigationBarItem(
                      icon: Align(
                        alignment: Alignment.center,
                        child: SvgPicture.asset(
                          'assets/icons/home.svg',
                          width: 24,
                          height: 24,
                          colorFilter: const ColorFilter.mode(AppColors.bottomAppBarIconNormalColor, BlendMode.srcIn),
                        ),
                      ),
                      activeIcon: Align(
                        child: SvgPicture.asset(
                          'assets/icons/home-active.svg',
                          alignment: Alignment.center,
                          width: 24,
                          height: 24,
                          colorFilter: const ColorFilter.mode(AppColors.bottomAppBarIconActiveColor, BlendMode.srcIn),
                        ),
                      ),
                      label: "Home"),
                  BottomNavigationBarItem(
                    icon: SvgPicture.asset(
                      'assets/icons/devices-plus.svg',
                      width: 24,
                      height: 24,
                      colorFilter: const ColorFilter.mode(AppColors.bottomAppBarIconNormalColor, BlendMode.srcIn),
                    ),
                    activeIcon: SvgPicture.asset(
                      'assets/icons/devices-plus-active.svg',
                      width: 24,
                      height: 24,
                      colorFilter: const ColorFilter.mode(AppColors.bottomAppBarIconActiveColor, BlendMode.srcIn),
                    ),
                    label: 'Add',
                  ),
                  BottomNavigationBarItem(
                    icon: SvgPicture.asset(
                      'assets/icons/cart.svg',
                      width: 24,
                      height: 24,
                      colorFilter: const ColorFilter.mode(AppColors.bottomAppBarIconNormalColor, BlendMode.srcIn),
                    ),
                    activeIcon: SvgPicture.asset(
                      'assets/icons/cart-active.svg',
                      width: 24,
                      height: 24,
                      colorFilter: const ColorFilter.mode(AppColors.bottomAppBarIconActiveColor, BlendMode.srcIn),
                    ),
                    label: 'Cart',
                  ),
                  BottomNavigationBarItem(
                    icon: SvgPicture.asset(
                      'assets/icons/settings.svg',
                      width: 24,
                      height: 24,
                      colorFilter: const ColorFilter.mode(AppColors.bottomAppBarIconNormalColor, BlendMode.srcIn),
                    ),
                    activeIcon: SvgPicture.asset(
                      'assets/icons/settings-active.svg',
                      width: 24,
                      height: 24,
                      colorFilter: const ColorFilter.mode(AppColors.bottomAppBarIconActiveColor, BlendMode.srcIn),
                    ),
                    label: 'Settings',
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

// Screens with individual AppBars
class HomePage extends StatelessWidget {
  void onPressed() {
    print('Icon pressed');
  }

  @override
  Widget build(BuildContext context) {
    const userProfilePicture = "";

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffEDF1FB),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
                child: Row(
              children: [
                ProfilePictureWidget(profilePictureUrl: userProfilePicture),
                SizedBox(width: 12.0),
                HeadingSubheadingWidget(heading: "Hello, Jakob Bergson", subHeading: 'Administrator'),
              ],
            )),
            // CustomIconButton(
            //     onButtonPressed: onPressed, iconPath: 'assets/icons/chat.png')
          ],
        ),
      ),
      body: const Center(child: Text('Home Page')),
    );
  }
}

class Search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Search')),
      body: const Center(child: Text('Search Page')),
    );
  }
}

class Favourite extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Favourites')),
      body: const Center(child: Text('Favourites Page')),
    );
  }
}

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Profile')),
      body: const Center(child: Text('Profile Page')),
    );
  }
}
