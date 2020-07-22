import 'package:flutter/material.dart';
import 'package:test_app/pages/homepage.dart';
import 'package:test_app/pages/lockedroute.dart';
import 'package:test_app/pages/screen_6.dart';
import 'package:test_app/pages/screen_a.dart';
import 'package:test_app/pages/screen_b.dart';
import 'package:test_app/pages/screen_c.dart';
import 'package:test_app/pages/screen_d.dart';
import 'package:test_app/pages/screen_m.dart';
import 'package:test_app/pages/screen_n.dart';
import 'package:test_app/pages/screen_newb.dart';
import 'package:test_app/pages/screend_froma.dart';
import 'package:test_app/pages/screend_fromb.dart';
import 'package:test_app/pages/usecase3.dart';
import 'package:test_app/pages/usecase5.dart';
import 'package:test_app/pages/usecase6.dart';
import 'package:test_app/pages/usecase_2.dart';
import 'package:test_app/pages/usecase_4.dart';
import 'package:test_app/widgets/slide_animation_route.dart';

class Routing {
  static const HomePageRoute = '/home';

  static const ScreenARoute = '/screen_a';
  static const ScreenBRoute = '/screen_b';
  static const ScreenCRoute = '/screen_c';
  static const ScreenDRoute = '/screen_d';
  static const ScreenMRoute = '/screen_m';
  static const ScreenNRoute = '/screen_n';
  static const Screen6Route = '/screen_6';

  static const UseCase2Route = '/usecase_2';
  static const ScreenDFromA = '/screen_d_from_a';
  static const ScreenDFromB = '/screen_d_from_b';
  static const ScreenDFromC = '/screen_d_from_c';

  static const UseCase3Route = '/usecase_3';
  static const UseCase4Route = '/usecase_4';
  static const UseCase5Route = '/usecase_5';
  static const UseCase6Route = '/usecase_6';

  static const ScreenBFrom5 = '/screenb_5';

  static const LockedRoute = '/lock';

  static Route<dynamic> generateRoutes(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case HomePageRoute:
        return SlideAnimationRoute(
            page: HomePage(), slideAnimationType: routeSettings.arguments);
      case ScreenARoute:
        return SlideAnimationRoute(
            page: ScreenA(), slideAnimationType: routeSettings.arguments);
      case ScreenBRoute:
        return SlideAnimationRoute(
            page: ScreenB(), slideAnimationType: routeSettings.arguments);
      case ScreenCRoute:
        return SlideAnimationRoute(
            page: ScreenC(), slideAnimationType: routeSettings.arguments);
      case ScreenDRoute:
        return SlideAnimationRoute(
            page: ScreenD(), slideAnimationType: routeSettings.arguments);
      case ScreenMRoute:
        return SlideAnimationRoute(
            page: ScreenM(), slideAnimationType: routeSettings.arguments);
      case ScreenNRoute:
        return SlideAnimationRoute(
            page: ScreenN(), slideAnimationType: routeSettings.arguments);
      case UseCase2Route:
        return SlideAnimationRoute(
            page: UseCase2(), slideAnimationType: routeSettings.arguments);
      case ScreenDFromA:
        return SlideAnimationRoute(
            page: ScreenDFromSectionA(),
            slideAnimationType: routeSettings.arguments);
      case ScreenDFromB:
        return SlideAnimationRoute(
            page: ScreenDFromSectionB(),
            slideAnimationType: routeSettings.arguments);
      case ScreenDFromC:
        return SlideAnimationRoute(
            page: ScreenDFromSectionA(),
            slideAnimationType: routeSettings.arguments);
      case UseCase3Route:
        return SlideAnimationRoute(
            page: UseCase3(), slideAnimationType: routeSettings.arguments);
      case LockedRoute:
        return SlideAnimationRoute(
            page: Locked(), slideAnimationType: routeSettings.arguments);
      case UseCase4Route:
        return SlideAnimationRoute(
            page: UseCase4(), slideAnimationType: routeSettings.arguments);
      case UseCase5Route:
        return SlideAnimationRoute(
            page: UseCase5(), slideAnimationType: routeSettings.arguments);
      case UseCase6Route:
        return SlideAnimationRoute(
            page: UseCase6(), slideAnimationType: routeSettings.arguments);
      case Screen6Route:
        return SlideAnimationRoute(
            page: Screen6(), slideAnimationType: routeSettings.arguments);
      case ScreenBFrom5:
        return SlideAnimationRoute(
            page: ScreenNewB(), slideAnimationType: routeSettings.arguments);
      default:
        return SlideAnimationRoute(
            page: HomePage(), slideAnimationType: routeSettings.arguments);
    }
  }
}
