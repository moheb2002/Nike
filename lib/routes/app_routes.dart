import 'package:flutter/material.dart';
import 'package:store_app/views/editprofile.dart';
import 'package:store_app/views/favourite.dart';
import 'package:store_app/views/forgot_password.dart';
import 'package:store_app/views/mainpage.dart';
import 'package:store_app/views/my_cart.dart';
import 'package:store_app/views/mycart.dart';
import 'package:store_app/views/search.dart';
import 'package:store_app/views/onboard.dart';
import 'package:store_app/views/sign_in.dart';
import 'package:store_app/views/sign_up.dart';
import 'package:store_app/views/explorer.dart';
import 'package:store_app/views/profile.dart';
import 'package:store_app/views/notification.dart';
import 'package:store_app/views/otp_verification.dart';
import 'routes_name.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppCharRoute.onBoard:
        return myRoute(const OnBoard());
      case AppCharRoute.forgotPassword:
        return myRoute(const ForgotPassword());
      case AppCharRoute.mycarthome:
        return myRoute(const MyCartHome());
      case AppCharRoute.editprofile:
        return myRoute(const Editprofile());
      case AppCharRoute.notification:
        return myRoute(Notifications());
      case AppCharRoute.favourite:
        return myRoute(Favourite());
      case AppCharRoute.main:
        return myRoute(const MainPage());
      case AppCharRoute.signin:
        return myRoute(const SignIn());
      case AppCharRoute.mycart:
        return myRoute(const MyCart());
      case AppCharRoute.signup:
        return myRoute(const SignUp());
      case AppCharRoute.explorer:
        return myRoute(const Explorer());
      case AppCharRoute.profile:
        return myRoute(const Profile());
      case AppCharRoute.otp:
        return myRoute(const OtpVerification());
      case AppCharRoute.search:
        return myRoute(const Search());
      default:
        return null;
    }
  }

  MaterialPageRoute<dynamic> myRoute(Widget page) =>
      MaterialPageRoute(builder: (_) => page);
}
