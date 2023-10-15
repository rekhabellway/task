import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:task/view/screen/chat/chat_screen.dart';
import 'package:task/view/screen/comment/comment_screen.dart';
import 'package:task/view/screen/story/story_screen.dart';
import '../home/home_screen.dart';
import '../user/your_activity.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  void initState() {
    super.initState();
  }

  List<Widget> _buildScreens() => [
        const HomeScreen(),
        const YourActivity(),
        const StoryScreen(),
        const ChatScreen(),
        const CommentScreen(),
      ];

  List<PersistentBottomNavBarItem> _navBarsItems() => [
        PersistentBottomNavBarItem(
          icon: const Icon(
            Icons.home,
            size: 20,
          ),
          title: "Home",
          activeColorPrimary: const Color(0xfff1cb0b),
          inactiveColorPrimary: const Color(0xff020223),
        ),
        PersistentBottomNavBarItem(
          icon: const Icon(
            Icons.favorite_border_outlined,
            size: 20,
          ),
          title: "Location",
          activeColorPrimary: const Color(0xfff1cb0b),
          inactiveColorPrimary: const Color(0xff020223),
        ),
        PersistentBottomNavBarItem(
          icon: const Icon(
            Icons.share,
            size: 20,
          ),
          title: "Add Peoples",
          activeColorPrimary: const Color(0xfff1cb0b),
          inactiveColorPrimary: const Color(0xff020223),
        ),
        PersistentBottomNavBarItem(
          icon: const Icon(
            Icons.messenger_outline_rounded,
            size: 20,
          ),
          title: "Message",
          activeColorPrimary: const Color(0xfff1cb0b),
          inactiveColorPrimary: const Color(0xff020223),
        ),
        PersistentBottomNavBarItem(
          icon: const Icon(
            Icons.person_outline_outlined,
            size: 20,
          ),
          title: "Profile",
          activeColorPrimary: const Color(0xfff1cb0b),
  inactiveColorPrimary: const Color(0xff020223),
        ),
      ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8), color: Colors.blue),
        child: PersistentTabView(
          context,
          screens: _buildScreens(),
          items: _navBarsItems(),
          confineInSafeArea: true,
          handleAndroidBackButtonPress: true,
          resizeToAvoidBottomInset: true,
          stateManagement: true,
          hideNavigationBarWhenKeyboardShows: true,
          decoration: NavBarDecoration(
            boxShadow: [const BoxShadow(color: Colors.grey, blurRadius: 1)],
            borderRadius: BorderRadius.circular(10.0),
          ),
          popAllScreensOnTapOfSelectedTab: true,
          popActionScreens: PopActionScreensType.all,
          itemAnimationProperties: const ItemAnimationProperties(
            duration: Duration(milliseconds: 200),
          ),
          screenTransitionAnimation: const ScreenTransitionAnimation(
            animateTabTransition: true,
            duration: Duration(milliseconds: 200),
          ),
          navBarStyle: NavBarStyle.style13,
        ),
      ),
    );
  }
}
