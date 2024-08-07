import 'package:bigcart/core/constant/routes.dart';
import 'package:bigcart/core/midllware/mymidllware.dart';
import 'package:bigcart/view/screen/auth/confirm_password.dart';
import 'package:bigcart/view/screen/auth/forget_password.dart';
import 'package:bigcart/view/screen/auth/login_screen.dart';
import 'package:bigcart/view/screen/auth/signup_screen.dart';
import 'package:bigcart/view/screen/home/home_page.dart';
import 'package:bigcart/view/screen/onboarding.dart';
import 'package:bigcart/view/screen/splashScreen_page.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

List<GetPage<dynamic>>? routes = [
  //Auth
  GetPage(name: "/", page: () => SplashScreen(), middlewares: [
    MymiDllWare(),
  ]),
  GetPage(
    name: AppRout.OnBoarding,
    page: () => const Onboarding(),
  ),
  GetPage(name: AppRout.login, page: () => const LoginScreen()),
  GetPage(name: AppRout.confirmpassword, page: () => const ConfirmPassWord()),
  GetPage(name: AppRout.signup, page: () => const SignUpScreen()),
  GetPage(name: AppRout.forgetpassword, page: () => const ForgetPassWord()),
  GetPage(name: AppRout.homepage, page: () => const HomePage()),
];
