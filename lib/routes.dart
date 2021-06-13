import 'package:ecommerce/pages/Forgot_password/Forgot_password.dart';
import 'package:ecommerce/pages/Login_Success/login_success.dart';
import 'package:ecommerce/pages/OnBoarding/intro_screen.dart';
import 'package:ecommerce/pages/Profile/profile.dart';
import 'package:ecommerce/pages/SignUp/sign_up.dart';
import 'package:ecommerce/pages/Sign_In/Sign_In_Screen.dart';
import 'package:ecommerce/pages/home/home_screen.dart';
import 'package:ecommerce/pages/otp/otp_screen.dart';
import 'package:get/get.dart';

routes() => [
  GetPage(name: "/", page:() => IntroScreen()),
  GetPage(name: "/sign_in", page:() => SignInScreen()),
  GetPage(name: "/sign_up", page:() => SignUpScreen()),
  GetPage(name: "/log_in_success", page:() => LoginSuccessScreen()),
  GetPage(name: "/forget_password", page:() => ForgotPassword()),
  GetPage(name: "/otp", page:() => OtpScreen()),
  GetPage(name: "/home", page:() => Home()),
  GetPage(name: "/profile", page:() => Profile()),
];