import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:retailgain_mobile_app/app/auth/login/modules/presentation/screen/login_screen.dart';
import 'package:retailgain_mobile_app/app/auth/register/modules/presentation/screen/register_screen.dart';
import 'package:retailgain_mobile_app/app/home/feat/add_coupon_manually/presntation/screens/add_coupon_manullay_screen.dart';
import 'package:retailgain_mobile_app/app/home/feat/add_coupon_manually/presntation/screens/add_new_coupon_screen.dart';
import 'package:retailgain_mobile_app/app/home/feat/add_new_invoice/modules/presentation/screens/add_new_invoice_screen.dart';
import 'package:retailgain_mobile_app/app/home/feat/get_all_crm/modules/presntation/screens/get_all_crm_screen.dart';
import 'package:retailgain_mobile_app/app/home/feat/get_all_invoices/modules/presntation/screens/get_all_invoice_screen.dart';
import 'package:retailgain_mobile_app/app/home/feat/home_page_layout/presentation/screens/home_page_layout_screen.dart';
import 'package:retailgain_mobile_app/app/home/feat/marketing/sections/campaigns_section/campaigns_section_screen.dart';
import 'package:retailgain_mobile_app/app/home/feat/sms/get_all_sms/presntation/screens/get_sms_campaigns_screen.dart';
import 'package:retailgain_mobile_app/app/home/feat/sms/send_sms/presntation/screens/pages/send_sms_step_two.dart';
import 'package:retailgain_mobile_app/app/home/feat/sms/send_sms/presntation/screens/send_sms_screen.dart';
import 'package:retailgain_mobile_app/app/on_boarding/presntation/page/onbaording_screen.dart';
import 'package:retailgain_mobile_app/app/splash/presntation/screens/splash_screen.dart';
import 'package:retailgain_mobile_app/config/routes/routes_names.dart';

GlobalKey<NavigatorState> navigationKey = GlobalKey<NavigatorState>();
final router = GoRouter(
  initialLocation: AppRoutesNames.splashScreen,
  navigatorKey: navigationKey,
  observers: [NavigatorObserver()],
  debugLogDiagnostics: true,
  routes: [
    GoRoute(
      path: AppRoutesNames.splashScreen,
      builder: (context, state) => const SplashScreen(),
    ),
    GoRoute(
      path: AppRoutesNames.onBoarding,
      builder: (context, state) => const OnBoardingPage(),
    ),
    GoRoute(
      path: AppRoutesNames.loginScreen,
      builder: (context, state) => const LoginScreen(),
    ),
    GoRoute(
      path: AppRoutesNames.signupScreen,
      builder: (context, state) => const RegisterScreen(),
    ),
    GoRoute(
      path: AppRoutesNames.homeScreen,
      builder: (context, state) => const HomePageLayoutScreen(),
    ),
    GoRoute(
      path: AppRoutesNames.addInvoiceScreen,
      builder: (context, state) => const AddNewInvoiceScreen(),
    ),
    GoRoute(
      path: AppRoutesNames.getAllInvoices,
      builder: (context, state) => const GetAllInvoicesScreen(),
    ),
    GoRoute(
      path: AppRoutesNames.getAllCrm,
      builder: (context, state) => const GetAllCrmScreen(),
    ),
    GoRoute(
      path: AppRoutesNames.campaignsSectionScreen,
      builder: (context, state) => const CampaignsSectionScreen(),
      routes: [
        GoRoute(
          path: AppRoutesNames.getAllSmsScreen,
          name: AppRoutesNames.getAllSmsScreen,
          builder: (context, state) => const GetAllSmsCampaignsScreen(),
          routes: [
            GoRoute(
              path: AppRoutesNames.sendSmsScreenPartOne,
              name: AppRoutesNames.sendSmsScreenPartOne,
              builder: (context, state) => const SendSmsScreen(),
              routes: [
                GoRoute(
                  path: AppRoutesNames.sendSmsScreenPartTwo,
                  builder: (context, state) => const SendSmsStepTwo(),
                  name: AppRoutesNames.sendSmsScreenPartTwo,
                ),
              ],
            ),
          ],
        ),
      ],
    ),
    GoRoute(
      path: AppRoutesNames.addNewCoupon,
      builder: (context, state) => const AddNewCouponScreen(),
      routes: [
        GoRoute(
          path: AppRoutesNames.addNewCouponManullay,
          name:AppRoutesNames.addNewCouponManullay,
          builder: (BuildContext context, GoRouterState state) =>
              const AddedNewCouponManuallyScreen(),
        ),
      ],
    ),
  ],
);
