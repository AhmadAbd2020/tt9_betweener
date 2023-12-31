import 'package:flutter/material.dart';
import '/controllers/link_controller.dart';
import '/views/screens/linkScreens/add_link.dart';
import '/views/screens/mainScreens/home_view.dart';
import '/views/screens/mainScreens/profile_view.dart';
import '/views/screens/mainScreens/receive_view.dart';
import '/views/widgets/appbar/home_appbar.dart';
import '/views/widgets/appbar/profile_appbar.dart';
import '/views/widgets/appbar/receive_appbar.dart';
import '/views/widgets/custom_floating_nav_bar.dart';

import '../../utilis/constants.dart';

class MainAppView extends StatefulWidget {
  static String id = '/mainAppView';

  const MainAppView({super.key});

  @override
  State<MainAppView> createState() => _MainAppViewState();
}

class _MainAppViewState extends State<MainAppView> {
  int _currentIndex = 1;

  late List<Widget?> screensList = [
    const ReceiveView(),
    const HomeView(),
    const ProfileView()
  ];
  late List<PreferredSizeWidget> appBarList = [
    const ReceiveAppBar(),
    const HomeAppBar(),
    const ProfileAppBar()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appBarList[_currentIndex],
        body: screensList[_currentIndex],
        extendBody: true,
        bottomNavigationBar: CustomFloatingNavBar(
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
        ),
        floatingActionButton: _currentIndex == 2
            ? FloatingActionButton(
                backgroundColor: AppColors.kPrimaryColor,
                shape: const CircleBorder(),
                onPressed: () {
                  Navigator.pushNamed(context, AddLink.id).then((value) {
                    LinksController().getLinks(context);
                    setState(() {});
                  });
                },
                child: const Icon(
                  Icons.add,
                  size: 48,
                  color: Colors.white,
                ),
              )
            : null);
  }
}
