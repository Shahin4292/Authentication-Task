import 'package:authentication_task/res/routes/routes_name.dart';
import 'package:get/get.dart';
import '../../view/login/login_view.dart';

class AppRoutes {
  static appRoutes() => [
        GetPage(
          name: RouteName.loginView,
          page: () => const LoginView(),
          transitionDuration: const Duration(milliseconds: 250),
          transition: Transition.leftToRightWithFade,
        ),

      ];
}
