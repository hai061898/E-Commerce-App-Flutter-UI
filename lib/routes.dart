import 'package:ecommerce/pages/OnBoarding/intro_screen.dart';
import 'package:ecommerce/pages/SignIn/Sign_In_Screen.dart';
import 'package:get/get.dart';

routes() => [
  GetPage(name: "/", page:() => IntroScreen()),
  GetPage(name: "/sign_in", page:() => SignInScreen()),
];