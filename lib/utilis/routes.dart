// ignore_for_file: implementation_imports

import "package:flutter/src/widgets/framework.dart";

import '../views/screens/authScreens/login_view.dart';
import '../views/screens/authScreens/register_view.dart';
import '../views/screens/linkScreens/add_link.dart';
import '../views/screens/loading_view.dart';
import '../views/screens/mainScreens/home_view.dart';
import '../views/screens/mainScreens/profile_view.dart';
import '../views/screens/mainScreens/receive_view.dart';
import '../views/screens/main_app_view.dart';
import '../views/screens/searchScreens/search_screen.dart';

class AppRoutes {
  static Map<String, Widget Function(dynamic context)> routes = {
    LoadingView.id: (context) => const LoadingView(),
    SearchScreen.id: (context) => const SearchScreen(),
    AddLink.id: (context) => const AddLink(),
    LoginView.id: (context) => const LoginView(),
    RegisterView.id: (context) => const RegisterView(),
    HomeView.id: (context) => const HomeView(),
    MainAppView.id: (context) => const MainAppView(),
    ProfileView.id: (context) => const ProfileView(),
    ReceiveView.id: (context) => const ReceiveView(),
  };
}
