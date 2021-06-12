import 'package:ecommerce/pages/Forgot_password/Forgot_password.dart';
import 'package:ecommerce/pages/Login_Success/login_success.dart';
import 'package:ecommerce/pages/OnBoarding/intro_screen.dart';
import 'package:ecommerce/pages/Sign_In/Sign_In_Screen.dart';
import 'package:ecommerce/pages/home/home_screen.dart';
import 'package:get/get.dart';

routes() => [
  GetPage(name: "/", page:() => IntroScreen()),
  GetPage(name: "/sign_in", page:() => SignInScreen()),
  GetPage(name: "/log_in_success", page:() => LoginSuccessScreen()),
  GetPage(name: "/forget_password", page:() => ForgotPassword()),
  GetPage(name: "/home", page:() => Home()),
];